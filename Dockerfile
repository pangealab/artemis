# Jekyll Version (e.g. 3.8.6)
ARG JEKYLL_VERSION

# Base Image
FROM jekyll/jekyll:$JEKYLL_VERSION

# Arguments
ARG IMAGE_CREATE_DATE
ARG IMAGE_VERSION
ARG IMAGE_SOURCE_REVISION

# Metadata as defined in OCI image spec annotations - https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.title="Artemis" \
      org.opencontainers.image.description="Reference Architecture Doc Site with Jekyll & Pandoc docgen" \
      org.opencontainers.image.created=$IMAGE_CREATE_DATE \
      org.opencontainers.image.version=$IMAGE_VERSION \
      org.opencontainers.image.authors="Anthony Angelo" \
      org.opencontainers.image.url="https://srolab@dev.azure.com/srolab/artemis/_git/artemis" \
      org.opencontainers.image.documentation="https://srolab@dev.azure.com/srolab/artemis/_git/artemis/README.md" \
      org.opencontainers.image.vendor="Anthony Angelo" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://srolab@dev.azure.com/srolab/artemis/_git/artemis" \
      org.opencontainers.image.revision=$IMAGE_SOURCE_REVISION

# Volume(s)
VOLUME /srv

# Port(s)
EXPOSE 4000

# Copy Site
ADD . /srv/jekyll

# Workdir
WORKDIR /srv/jekyll

# Startup
# ENTRYPOINT ["jekyll", "serve", "--livereload", "-H", "0.0.0.0"]
CMD ["jekyll", "serve", "--livereload", "-H", "0.0.0.0"]