FROM node:16-buster-slim

LABEL version="1.0.4"
LABEL repository="https://github.com/wansyu/hexo-action/"
LABEL homepage="https://wansyu.github.io"
LABEL maintainer="12646240+wansyu@users.noreply.github.com"
ENV TZ=Asia/Shanghai
COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
