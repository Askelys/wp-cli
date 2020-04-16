FROM wordpress:cli-2.4-php7.3

USER root

RUN \
  /bin/bash -c 'php -d memory_limit=1024M "$(which wp)" --allow-root package install git@github.com:nestorandrespe/polylang-cli.git'

USER www-data
