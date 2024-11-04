# drupal-docker

A Docker starter for Drupal, with Composer, and Drush.

# Using this repo

- Start the containers: `make up`

- Stop the containers: `make down`

- Rebuild the containers: `make build`

### Initial Setup

1. Open terminal on the drupal container: `make bash`

2. Install Drupal using Drush (optional): `drush site:install --db-url=mysql://drupal:drupal@drupal-docker-database:3306/drupal --site-name="My Drupal Site" --account-name=admin --account-pass=admin --account-mail=admin@example.com`

3. Visit: [localhost:4080](http://localhost:4080/)

## Themes/Modules

Put custom themes/modules into the `./drupal-themes`/`./drupal-modules` folders, which map to the respective Drupal custom folders. 

## Admin Tools

- (optional) Start phpMyAdmin: `make phpmyadmin`

- Visit: [localhost:3360](http://localhost:3360)

## Dependencies

- Docker Desktop
- Make (Optional)
