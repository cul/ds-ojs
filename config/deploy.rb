OJS_CONFIG = YAML.load(File.read(File.expand_path('../ojs_config.yml', __FILE__)))["#{fetch(:stage)}"].symbolize_keys!


set :department, 'cdrs'
set :instance, fetch(:department)
set :application, OJS_CONFIG[:application]
set :deploy_name, "#{fetch(:application)}_#{fetch(:stage)}"

#this holds the deploy script only, for cap deploy
set :repo_url,  "git@github.com:cul/ds-ojs.git"

set :deploy_to,   "/var/www/#{fetch(:instance)}/#{fetch(:deploy_name)}"

set :remote_user, "#{fetch(:instance)}serv"



namespace :ojs do


  set :ojs_version_no, OJS_CONFIG[:ojs_version]
  set :ojs_version, "ojs-#{fetch(:ojs_version_no)}"
  set :ojs_tar_file, "#{fetch(:ojs_version)}.tar"
  set :download_url, "http://pkp.sfu.ca/ojs/download/#{fetch(:ojs_tar_file)}.gz"

  set :ojs_root, "#{fetch(:deploy_to)}/html"
  set :shared_path, OJS_CONFIG[:shared_dir]


  task :setup do
    on roles (:web) do

      invoke 'deploy'

      #set up variables to be symlinked
      ojs_root_config_file_path = File.join(fetch(:ojs_root), 'config.inc.php')
      ojs_root_robots_txt_file_path = File.join(fetch(:ojs_root), 'robots.txt')

      set :shared_config_directory_path,File.join(fetch(:shared_path),'config')
      shared_config_file_path = File.join(fetch(:shared_config_directory_path),'config.inc.php')
      shared_robots_txt_file_path = File.join(fetch(:shared_path),'robots.txt')



      within fetch(:deploy_to) do

        # Download and unpack new ojs instance to deploy_to
        execute :wget, fetch(:download_url)
        execute :gunzip, "#{fetch(:ojs_tar_file)}.gz"
        execute :tar, "-xvf #{fetch(:ojs_tar_file)}"
        set :expanded_tar_dir, "#{fetch(:deploy_to)}/#{fetch(:ojs_version)}"
        execute :mv, "#{fetch(:expanded_tar_dir)} #{fetch(:ojs_root)}"
        execute :rm, "#{fetch(:ojs_tar_file)}"

        unless test("[ -d #{File.join(fetch(:shared_path))} ]")
          execute :mkdir, fetch(:shared_path)
        end

        unless test("[ -d #{File.join(fetch(:shared_config_directory_path))} ]")
          execute :mkdir, '-p', File.join(fetch(:shared_config_directory_path))
        end

        if(!fetch(:stage) == :local)
          unless test("[ -f #{shared_config_file_path} ]")
            execute :mv, File.join(fetch(:ojs_root), 'config.inc.php'), shared_config_file_path
          end
        end
      end


      set :ojs_uploads_dir, File.join(fetch(:shared_path), 'files')

      execute :mkdir, '-p', fetch(:ojs_uploads_dir)
      execute :chmod,  " -R 775 #{fetch(:ojs_uploads_dir)}"

      execute :mkdir, '-p', File.join(fetch(:shared_path), 'logs')


      #remove default config and symlink to shared config
      execute :rm, ojs_root_config_file_path
      execute :ln, '-sf', shared_config_file_path, ojs_root_config_file_path


      # Check for robots.txt file in shared. Create if it doesn't exist.
      unless test("[ -f #{shared_robots_txt_file_path} ]")
        execute "echo -e \"User-agent: *\nDisallow: /\" > #{shared_robots_txt_file_path}"
      end
      # Create symlink for web root robots.txt to 'shared' version.
      execute :ln, '-sf', shared_robots_txt_file_path, ojs_root_robots_txt_file_path

      #create a directory to hold usage event logs on local disk and directory into which symlink will be placed
      execute :mkdir, '-p', "#{fetch(:deploy_to)}/logs/usageEventLogs"
      execute :mkdir, '-p', "#{fetch(:shared_path)}/files/usageStats"

      #symlink usage event log directory back to shared directory
      execute :ln, '-sf', "#{fetch(:deploy_to)}/logs/usageEventLogs", "#{fetch(:shared_path)}/files/usageStats/usageEventLogs"

      invoke 'ojs:update:themes'

    end
  end

  task :install do
    on roles (:web) do

      #post to running OJS instance to complete initial setup for site
      param_string = URI.encode_www_form(OJS_CONFIG[:install_params])
      execute :wget, "-O - --post-data=\"#{param_string}\" \"#{OJS_CONFIG[:ojs_instance]}\""

    end
  end

  namespace :update do
    task :themes do
      on roles (:web) do
        invoke 'deploy'
        execute :cp, '-a', "#{fetch(:deploy_to)}/current/plugins/themes/.", "#{fetch(:deploy_to)}/html/plugins/themes/"
      end
    end
  end

end
