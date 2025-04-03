# 基础环境
FROM registry.cn-chengdu.aliyuncs.com/runhaofu/vue_docker_base


LABEL MAINTAINER=1549971272@qq.com

COPY nginx.conf /usr/local/nginx/conf/nginx.conf
RUN ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx

# 设置容器内工作目录
WORKDIR /var/www/html/vue

# 将当前目录文件加入到容器工作目录中（. 表示当前宿主机目录）
ADD . /var/www/html/vue

# 利用 pip 安装依赖
RUN npm config set registry https://registry.npmmirror.com/

RUN npm install
RUN npm install http-server -g

# Windows环境下编写的start.sh每行命令结尾有多余的\r字符，需移除。
RUN sed -i 's/\r//' ./start.sh

# 设置start.sh文件可执行权限
RUN chmod +x ./start.sh

ENTRYPOINT /bin/bash ./start.sh
