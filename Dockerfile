FROM wordpress:cli-2.4-php7.3


RUN wget https://github.com/nestorandrespe/polylang-cli/archive/master.zip -O /tmp/master.zip
RUN /bin/bash -c 'php -d memory_limit=1024M /usr/local/bin/wp package install /tmp/master.zip'
RUN rm /tmp/master.zip

ENTRYPOINT []
CMD [ "/bin/bash" ]
