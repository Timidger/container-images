FROM scratch
ADD amzn2-container-raw-2.0.20210813.1-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-cbcef4d5e6ddf099c19df5fc2c6a347b3129084e4a887b4b3808cfbc109e7643.tar.gz" \
 && echo "45b6d3758896d184d4a02d1659109fb8ea2dadbe5dda04467c0ca76aabc6404d  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
