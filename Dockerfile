FROM drupal:10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    apt-get install -y unzip && \
    apt-get install -y nano less && \
    apt-get install -y git && \
    apt-get install -y nodejs && \
    apt-get install -y npm

RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Drush, install and add to PATH
RUN composer require "drush/drush" && \
    echo 'export PATH=$PATH:/opt/drupal/vendor/bin' >> ~/.bashrc
