FROM graylog2/server:2.0.3-2

COPY config/graylog.conf /usr/share/graylog/data/config/graylog.conf
COPY config/log4j2.xml /usr/share/graylog/data/config/log4j2.xml
RUN curl -o /usr/share/graylog/plugin/graylog-plugin-slack-2.2.1.jar -z /usr/share/graylog/plugin/graylog-plugin-slack-2.2.1.jar  https://github.com/Graylog2/graylog-plugin-slack/releases/download/2.2.1/graylog-plugin-slack-2.2.1.jar