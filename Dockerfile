FROM ubuntu:19.10

# prevent time zone config. asking questions
ARG DEBIAN_FRONTEND=noninteractive

RUN echo "deb [trusted=yes] http://qgis.org/ubuntu eoan main" >>/etc/apt/sources.list \
 && apt-get update \
 && apt-get install --yes qgis python-qgis
