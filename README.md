# Docker Unit Testing Project #

## BitBucket Links ##
[BitBucket REPO](https://bitbucket.org/tudorfil8/docker/src/production/)

[BitBucket WIKI](https://bitbucket.org/tudorfil8/docker/wiki/Home)

[BitBucket Pipelines](https://bitbucket.org/tudorfil8/docker/addon/pipelines/home)

## GitHub/ Travis ##

[Travis CI](https://travis-ci.com/tudorfil9/docker9)

[GitHub REPO](https://github.com/tudorfil9/docker9)





## What is this ? ##

*  A docker based unit test project

## What for ? ##

*  To proof the concept of transient automated unit testing with Docker containers and BitBucket pipelines for a Continuous Integration and Deployment lifecycle.

## What does it do ? ##

* Upon a commit hook it will trigger a Docker build based on the included Docker file.
* Custom sysprepped container will be updated with any changes from current commit then re-uploaded to Docker Registry
* Updated Docker container will be reused for Maven test
* Updated Docker containerr will be reused for Maven package

## NOTES ##

1. I chose Bitbucket-pipeline for CI integration:

    * Travis was very slow during Docker provisioning
    * Travis has no OOTB integration with BB just GitHub
    * Bitbucket pipeline is very fast for Docker
    * BB has a very nice UI

2. Release strategy:

    * Development work is on Master branch.
    * Deployment is on Producion branch.
        Docker container is only updated and pushed to DR from Production branch.
    * Commit only via PR to production.
  


## How to run this project? Local ##
```
$ git clone git@bitbucket.org:tudorfil8/docker.git
$ cd App
$ mvn test
$ mvn -Dtest=TestMessageBuilder test
$ mvn -Dtest=TestMessageBuilder#testHelloWorld test
```
## How to run this project? BitBucket pipeline (CI) ##
```
$ git clone git@bitbucket.org:tudorfil8/docker.git

Monitor pipeline after commit here:
https://bitbucket.org/tudorfil8/docker/addon/pipelines/home#!/results/branch/production/page/1

```



## How to contribute to this project? ##
```
$ git clone git@bitbucket.org:tudorfil8/docker.git
$ merge PRs to master branch.
$ Monitor build pipeline for master branch here

https://bitbucket.org/tudorfil8/docker/addon/pipelines/home#!/results/branch/master/page/1

```