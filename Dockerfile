FROM graylog2/server:2.0.3-2

COPY config/graylog.conf /usr/share/graylog/data/config/graylog.conf
COPY config/log4j2.xml /usr/share/graylog/data/config/log4j2.xml
RUN apt-get update && \
   apt-get -y dist-upgrade && \
   apt-get -y install jq
RUN curl -L -o /usr/share/graylog/plugin/graylog-plugin-slack-2.2.1.jar $(curl -s https://api.github.com/repos/graylog2/graylog-plugin-slack/releases/latest | jq -r ".assets[] | select(.content_type | contains(\"application/java-archive\")) | .browser_download_url")