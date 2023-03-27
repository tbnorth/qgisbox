FROM ubuntu:22.04

# prevent time zone config. asking questions
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get --yes install ca-certificates

RUN echo "deb [trusted=yes] http://qgis.org/ubuntu jammy main" >>/etc/apt/sources.list \
 && apt-get update \
 && apt-get install --yes qgis python-qgis
