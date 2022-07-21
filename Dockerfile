FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y imagemagick vim

RUN sed -i 's/<policy domain="coder" rights="none" pattern="PDF" \/>/<policy domain="coder" rights="read|write" pattern="PDF" \/>/' /etc/ImageMagick-6/policy.xml
RUN sed -i 's/<policy domain="resource" name="memory" value="256MiB"\/>/<policy domain="resource" name="memory" value="8GiB"\/>/' /etc/ImageMagick-6/policy.xml
