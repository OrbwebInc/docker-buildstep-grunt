FROM        node
# 1. npm install grunt bower
# 2. bower install
# 3. grunt build
RUN         npm install -g bower grunt-cli
WORKDIR     /usr/src/src/frontend
RUN         npm install
RUN         bower install --allow-root
CMD         ["grunt", "build", "--force"]

