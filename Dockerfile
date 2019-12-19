FROM lsiobase/alpine:3.8

# set label
LABEL maintainer="NG6"

ARG BaiduPCSGo_VER=3.7.0

COPY  root /

RUN wget --no-check-certificate https://github.com/liuzhuoling2011/baidupcs-web/releases/download/${BaiduPCSGo_VER}/BaiduPCS-Go-${BaiduPCSGo_VER}-linux-amd64.zip \
&&  unzip BaiduPCS-Go-${BaiduPCSGo_VER}-linux-amd64.zip \
&&  mv BaiduPCS-Go-${BaiduPCSGo_VER}-linux-amd64/BaiduPCS-Go /usr/bin/BaiduPCS-Go \
&&  rm -rf BaiduPCS-Go-${BaiduPCSGo_VER}-linux-amd64*  \
&&  chmod a+x /usr/bin/BaiduPCS-Go

VOLUME /root/Downloads /config
EXPOSE 5299