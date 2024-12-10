# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 将本地的 assets 目录复制到 Nginx 的默认静态文件目录中
COPY ./assets /usr/share/nginx/html

# 暴露80端口用于HTTP服务
EXPOSE 80

# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]