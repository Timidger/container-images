FROM scratch
ADD amzn-container-minimal-2018.03.0.20210721.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-96900e11bba57b06a0616a0bb6faa31e2d768b29001d11fdfa65375353e22e14.tar.gz" \
 && echo "a7a8bd81dd43de9a5705d1c943c0fb3dac49c485a21cd198a445164eab8a7b02  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
