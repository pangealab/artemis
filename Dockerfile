FROM jekyll/jekyll:3.8.6

VOLUME /srv
EXPOSE 4000

ADD . /srv/jekyll

WORKDIR /srv/jekyll

ENTRYPOINT ["jekyll", "serve", "--livereload", "-H", "127.0.0.1"]