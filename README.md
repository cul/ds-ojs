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
The OJS update:themes task requires the following variables.
```yaml
  ojs_version: 3.1.1-2
  application: jmetc
  shared_dir: /path/to//shared  
```


