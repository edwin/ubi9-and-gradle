FROM registry.access.redhat.com/ubi9/openjdk-21:latest

USER root

## download unzip
RUN microdnf install -y --nodocs unzip

## download gradle
RUN curl -L https://services.gradle.org/distributions/gradle-8.7-bin.zip? -o /opt/gradle-8.7-bin.zip

## extract gradle, create user and assign it into gradle
RUN unzip -q /opt/gradle-8.7-bin.zip -d /opt/ \
        && rm /opt/gradle-8.7-bin.zip \
        && useradd -m jboss \
        && chown -R jboss:jboss /opt/gradle-8.7

## set PATH
ENV GRADLE_HOME=/opt/gradle-8.7
ENV PATH=$PATH:$GRADLE_HOME/bin

USER jboss