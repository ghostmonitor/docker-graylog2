FROM graylog2/server:2.0.3-2

COPY config/graylog.conf /usr/share/graylog/data/config/graylog.conf
COPY config/log4j2.xml /usr/share/graylog/data/config/log4j2.xml