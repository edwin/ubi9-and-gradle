# UBI 9, OpenJDK 21, and Gradle

## About
A UBI9 base image containing `maven` and `gradle` for building Java project.

## How to Build
```
$ docker build -t ubi9-gradle -f ubi9-gradle.dockerfile .
```

## How to Test
Can use below repository for testing,

```
https://github.com/edwin/hello-world-quarkus-with-gradle
```