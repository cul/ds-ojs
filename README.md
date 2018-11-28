# DS-OJS

Capistrano v3 tasks for OJS projects.

## Usage

### OJS deployment
#### Tasks
1. `cap {env} ojs:setup`
(documentation forthcoming)

2. `cap {env} ojs:install`
(documentation forthcoming)


3. `cap {env} ojs:update:themes`

   Updates themes managed in ds-ojs repo.

#### Configurable variables
The OJS update:themes task requires the following variable set in ojs_config.yml.
```yaml
  application: app_name
```


