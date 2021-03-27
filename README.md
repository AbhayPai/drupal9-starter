# Lando Setup with Drupal 9

## Prerequisite for this is installation of lando in development machine are:
1. Docker
2. Lando

## This project also includes continuos integration of probo with drupal 9.

### Step 1: Clone this respository
```sh
git clone  git@github.com:AbhayPai/drupal9.git or git clone https://github.com/AbhayPai/drupal9.git
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

1. Drush to check available site aliases.
```sh
lando drush sa
```

2. To check credentials of mysql database.
```sh
lando info

```
3. To validate phpcs for custom code.
```sh
lando lint:php:themes
```

4. To use lint for custom js files.
```sh
lando lint:js
```

5. To use lint for custom scss files.
```sh
lando lint:scss
```

6. To compile scss files.
```sh
lando compile:scss <themes>
```
