#基础镜像
FROM tomcat:8.5.31-jre8
#定义变量、后续会使用，具体路径可以先启动容器然后进入进行查看
ENV DIR_WEBAPP /usr/local/tomcat/webapps/
#删除webapp下所有文件，因为当前应用作为根应用
RUN  rm -rf $DIR_WEBAPP/*
#添加本地的war包到远程容器中

#配置文件夹映射
VOLUME /usr/local/tomcat/webapps
#配置工作目录
WORKDIR /usr/local/tomcat/webapps
#解压war包到ROOT目录

#启动tomcat
CMD ["catalina.sh", "run"]
