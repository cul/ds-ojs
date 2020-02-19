# DS-OJS

Capistrano v3 tasks for OJS projects.

## Usage

copy ojs_config.template.yml to ojs_config.yml

### OJS deployment
#### Tasks
1. `cap {env} ojs:setup`
2. `cap {env} ojs:install`
3. `cap {env} ojs:update:themes`
   Updates themes managed in ds-ojs repo.
4. `cap {env} ojs:update:plugins`
	Deploys cul ojs plugins hosted in separate repos.

#### Configurable variables
The OJS update:themes task requires the following variable set in ojs_config.yml.
```yaml
  application: app_name
```
The OJS update:plugins task requires the following variables set in ojs_config.yml. (With example values for ojs-blog plugin deployed to the journals ojs install.)
```yaml
  application: journals
  plugin_repo_name: ojs-blog
  plugin_name: blog
  plugin_type: generic
```

