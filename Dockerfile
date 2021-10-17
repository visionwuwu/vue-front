# 继承ngnix镜像
FROM nginx
# docker容器取个名字
LABEL name="vue-front"
# 版本号
LABEL version="1.0"
# 将当前目录下的文件拷贝到web目录下
COPY ./dist /www/server/nginx/html
COPY ./vue-front.conf /www/server/panel/vhost/nginx/*.conf
EXPOSE 80