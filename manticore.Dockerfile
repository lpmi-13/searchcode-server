FROM manticoresearch/manticore:2.8.2

COPY ./assets/config/sphinx.conf /opt/app/
COPY ./assets/config/sphinx.conf /usr/bin/
COPY ./assets/config/sphinx.conf /etc/sphinxsearch/

RUN mkdir -p /tmp/sphinx-search/data/
RUN mkdir -p /var/data/

ENTRYPOINT ["/usr/bin/searchd", "--nodetach"]
