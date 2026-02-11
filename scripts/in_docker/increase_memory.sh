#!/bin/bash
sed -i 's/<policy domain="resource" name="memory" value="8GiB"\/>/<policy domain="resource" name="memory" value="13GiB"\/>/' /etc/ImageMagick-6/policy.xml
