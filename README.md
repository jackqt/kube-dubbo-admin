# kube-dubbo-admin
Docker image of Dubbo admin which support env injection

## Prerequisite
The Dockerfile depends on follow components:
+ **dubbo-admin-2.0.0.war**: Please download source code from [github/incubator-dubbo-ops](https://github.com/apache/incubator-dubbo-ops), and package as /war/ file
+ **tomcat7** docker image: Image based on official [tomcat:7-jre7](https://store.docker.com/images/tomcat) image
+ **JRE 7**: jre7 just because of the tomcat7 image

/Note: There is no special reason, just due to the old version of tomcat **may be** better to match the dubbo-admin), sorry I doesn't have enough time to test the full features on newest version of tomcat, please report issues if you have special requirement/

github: [github.com/incubator-dubbo-ops](https://github.com/apache/incubator-dubbo-ops)

## Environment Injection
Image support inject some necessary variable by docker environment:
+ **ZK_HOST**: zookeeper server, the format like this(zookeeper://zk-host:zk-port). Default value "zookeeper://127.0.0.1:2181"
+ **DUBBO_ROOT_PWD**: dubbo admin password of root. Default value "root"
+ **DUBBO_GUEST_PWD**: dubbo admin password of guest. Default value "guest"

## How to run
Follow below command to startup instance:
```
docker run -it -d -P  <IMAGE_NAME>:<IMAGE_TAG>
```

Or startup instance with env injection:
```
docker run -it -d -P -e ZK_HOST=zookeeper://zookeeper.domain.com:2181 -e DUBBO_ROOT_PWD=root <IMAGE_NAME>:<IMAGE_TAG>
```
