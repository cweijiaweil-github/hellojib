# 基于哪个镜像
FROM java:8

# 将本地文件夹挂载到当前容器
VOLUME /tmp

# 拷贝文件到容器，也可以直接写成ADD eureka1-0.0.1-SNAPSHOT.jar /app.jar
ADD /target/eureka1-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'

# 开放8761端口
EXPOSE 9100

# 配置容器启动后执行的命令
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]