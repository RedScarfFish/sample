# Dockerfile to create a docker image
FROM index.tenxcloud.com/tenxcloud/nodejs:latest

# Add files to the image
RUN mkdir -p /opt/nodejs
ADD . /opt/nodejs
WORKDIR /opt/nodejs

# Expose the container port
EXPOSE 80

ENTRYPOINT ["node", "index.js"]
