# drupal-docker

A Docker starter for Drupal, with Composer, and Drush.

# Using this repo

- Start the containers: `make up`

- Stop the containers: `make down`

- Rebuild the containers: `make build`

_Review 'Makefile' to see the commands without using Make._

### Initial Setup

1. Open terminal on the drupal container: `make bash`

2. Install Drupal using Drush (optional): `drush site:install --db-url=mysql://drupal:drupal@drupal-docker-database:3306/drupal --site-name="My Drupal Site" --account-name=admin --account-pass=admin --account-mail=admin@example.com`

3. Visit: [/user/login](http://localhost:4080/user/login)

4. admin:admin

## Themes/Modules

Put custom themes/modules into the `./drupal-themes`/`./drupal-modules` folders, which map to the respective Drupal custom folders.

## Admin Tools

- (optional) Start phpMyAdmin: `make phpmyadmin`

- Visit: [localhost:3360](http://localhost:3360)

## Dependencies

- Docker Desktop
- Make (Optional)
