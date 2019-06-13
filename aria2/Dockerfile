FROM xujinkai/aria2-with-webui

RUN apk update && apk add --no-cache su-exec tzdata

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >/etc/timezone

COPY aria2.conf /conf-copy/aria2.conf
RUN echo -e "\nbt-tracker=$(wget -q -O- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_best.txt | sed '/^$/d' | paste -d, -s)" >> /conf-copy/aria2.conf
COPY on-complete.sh /conf-copy/on-complete.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/conf-copy/start.sh"]
