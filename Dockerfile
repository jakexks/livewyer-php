FROM jakexks/tiny-php5-fpm
MAINTAINER Jake Sanders <jake@livewyer.com>

WORKDIR /srv
RUN rm -rf website && wget http://ftp.drupal.org/files/projects/drupal-7.34.tar.gz && tar -xvf drupal* && rm *.gz && mv drupal* website
WORKDIR /srv/website/sites/default
RUN cp default.settings.php settings.php
