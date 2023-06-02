# DDev Setup with Drupal 9

## Variants available for this drupal are:
1. [Drupal with lando support](https://github.com/AbhayPai/drupal9-starter/tree/v1-supports-lando)
2. [Drupal with probo support](https://github.com/AbhayPai/drupal9-starter/tree/v2-supports-probo)
3. [Drupal with github workflow support](https://github.com/AbhayPai/drupal9-starter/tree/v3-supports-github-workflow)
4. [Drupal with automation deployment support](https://github.com/AbhayPai/drupal9-starter/tree/v4-supports-automation-deployment)
5. [Drupal with ddev with solr support](https://github.com/AbhayPai/drupal9-starter/tree/v5-supports-ddev-solr)

## Prerequisite for this is installation of lando in development machine are:
1. Colima
2. Docker
3. Ddev

## This project also includes continuos integration of probo with drupal 9.

## Helpful URL's
1. [Local drupal9-starter](https://drupal9-starter.ddev.site)

## Helpful URL's
1. [Local drupal9-starter](https://drupal9-starter.ddev.site)

### Step 1: Clone this respository
```sh
git clone https://github.com/AbhayPai/drupal9-starter.git
```

### Step 2: Change directory to cloned project
```sh
cd drupal9-starter
```

### Step 3: Start project
```sh
ddev start
```

### Step 4: Configure settings.php for default site for local development
```sh
cp web/sites/development.services.rename-as-yml web/sites/development.services.yml
```

### Helpful Commands
___
### Drush to check available site aliases.
```sh
ddev drush sa
```

### To get details of project.
```sh
ddev describe
```

### To install composer packages.
```sh
ddev composer install <packagename>
```

### To update composer packages.
```sh
ddev composer update <packagename>
```

### To configure composer for phpcs.
```sh
ddev composer phpcs:config
```

### To validate phpcs for custom code in themes.
```sh
ddev composer phpcs:themes
```

### To validate phpcs for custom code in modules.
```sh
ddev composer phpcs:modules
```

### To fix phpcs for custom code in modules.
```sh
ddev composer phpcbf:themes
```

### To fix phpcs for custom code in themes.
```sh
ddev composer phpcbf:modules
```

### To validate deprecated of custom code in modules.
```sh
ddev composer deprecated:modules
```

### To validate deprecated of custom code in themes.
```sh
ddev composer deprecated:themes
```

### To run phpunit of custom code in modules.
```sh
ddev composer phunit:modules
```

### To install npm packages.
```sh
ddev npm install <packagename>
```

### To update npm packages.
```sh
ddev npm update <packagename>
```

### To use lint for custom js files.
```sh
ddev npm run lint:js:themes
```

### To use lint for custom scss files.
```sh
ddev npm run lint:scss:themes
```

### To compile scss files.
```sh
ddev npm run compile:scss
```

## To ssh into elasticsearch container
```sh
ddev ssh -s elasticsearch
```

### Configuring Ddev with elasticsearch on Local
1. Create a Elasticsearch Cluster server
  * Open this url `/admin/config/search/elasticsearch-connector` -> "Add cluster"
    * `Administrative cluster name` => `Local`
    * `Server URL` => `http://drupal9-starter-elasticsearch`
    * `Make this cluster default connection` => `true`
    * `Connection timeout` => `3`
    * `Status` => `Active`
2. Configuring a search server
  * Open this url `/admin/config/search/search-api` -> "Add server"
    * `Server name` => `Local`
    * `Enabled` => `true`
    * `Backend` => `Elasticsearch`
    * Elasticsearch settings
      * `Cluster` => `Local`
      * `Fuziness` => `auto`
3. Configuring a search server
  * Open this url `/admin/config/search/search-api` -> "Add index"
    * `Index name` => `Content Search`
    * `Datasources` => `Content`
    * `Server` => `Local`
    * `Enabled` => `true`
    * `Index items immediately` => `true`
    * `Track changes in referenced entities` => `true`
    * `Cron batch size` => `50`
4. Add fields in search index
  * Open this url `/admin/config/search/search-api/index/content_search/fields` -> "Add fields"
  * Done
  * Run Cron
5. [Verify index creation](http://drupal9-starter.ddev.site:9200/_cat/indices?v)
6. Create node from drupal cms
7. [Verify indexed content](http://drupal9-starter.ddev.site:9200/elasticsearch_index_db_content_search/_search)
