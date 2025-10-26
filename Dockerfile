FROM alpine:3.21.3

RUN apk update
RUN apk add imagemagick unzip
RUN apk add imagemagick-jpeg imagemagick-pdf

RUN mkdir -p /app/tmp && chmod 777 /app/tmp

RUN sed -i 's/<policy domain="coder" rights="none" pattern="PDF" \/>/<policy domain="coder" rights="read|write" pattern="PDF" \/>/' /etc/ImageMagick-7/policy.xml
RUN sed -i 's/<policy domain="resource" name="memory" value="256MiB"\/>/<policy domain="resource" name="memory" value="8GiB"\/>/' /etc/ImageMagick-7/policy.xml
