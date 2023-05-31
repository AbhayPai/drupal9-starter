# DDev Setup with Drupal 9

## Prerequisite for this is installation of lando in development machine are:
1. Colima
2. Docker
3. Ddev

## This project also includes continuos integration of probo with drupal 9.

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
