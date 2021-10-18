# 继承ngnix镜像
FROM nginx
# docker容器取个名字
LABEL name="vue-front"
# 版本号
LABEL version="1.0"
COPY ./dist /usr/share/nginx/html
COPY ./vue-front.conf /etc/nginx/conf.d
EXPOSE 8080