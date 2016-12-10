FROM alpine:latest
MAINTAINER David McCormick
COPY log_generator.py defaultDataFile.txt /
RUN apk update && \
apk add python && \
mkdir /logs && \
chmod +x /log_generator.py
CMD /log_generator.py --logFile=/logs/random.log
