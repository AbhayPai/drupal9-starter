# Lando Setup with Drupal 9

## Prerequisite for this is installation of lando in development machine are:
1. Docker
2. Lando

## This project also includes continuos integration of probo with drupal 9.

## This project is also using sonarcloud.io for reporting bugs in the code. [Drupal 9](https://sonarcloud.io/dashboard?id=AbhayPai_drupal9)

### Step 1: Clone this respository
```sh
git clone https://github.com/AbhayPai/drupal9.git
```

### Step 2: Change directory to cloned project
```sh
cd drupal9
```

### Step 3: Configure settings.php for default site for local development
```sh
cp web/sites/default/settings.local.rename-as-php web/sites/default/settings.local.php && \
cp web/sites/development.services.rename-as-yml web/sites/development.services.yml
```

### Step 4: Start lando
```sh
lando start
```

### Helpful Commands
___
### Drush to check available site aliases.
```sh
lando drush sa
```

### To check credentials of mysql database.
```sh
lando info
```

### To install composer packages.
```sh
lando composer install <packagename>
```

### To update composer packages.
```sh
lando composer update <packagename>
```

### To configure composer for phpcs.
```sh
lando composer phpcs:config
```

### To validate phpcs for custom code in themes.
```sh
lando lint:php:themes
```

### To validate phpcs for custom code in modules.
```sh
lando lint:php:modules
```

### To fix phpcs for custom code in modules.
```sh
lando lint:php:modules:fix
```

### To fix phpcs for custom code in themes.
```sh
lando lint:php:themes:fix
```

### To validate deprecated of custom code in modules.
```sh
lando deprecated:modules
```

### To validate deprecated of custom code in themes.
```sh
lando deprecated:themes
```

### To run phpunit of custom code in modules.
```sh
lando phunit:modules
```

### To install npm packages.
```sh
lando npm install <packagename>
```

### To update npm packages.
```sh
lando npm update <packagename>
```

### To use lint for custom js files.
```sh
lando lint:js
```

### To use lint for custom scss files.
```sh
lando lint:scss
```

### To compile scss files.
```sh
lando compile:scss <themes>
```
