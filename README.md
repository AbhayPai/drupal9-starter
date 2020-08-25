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
cd lando-drupal9
```

### Step 3: Start lando
```sh
lando start
```

### Step 4: Download drupal using lando command
```sh
lando composer install
```

### Helpful commands

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
lando lint:php
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
