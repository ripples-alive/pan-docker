FROM nextcloud

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >/etc/timezone

COPY entrypoint.sh /my-entrypoint.sh
RUN chmod +x /my-entrypoint.sh
ENTRYPOINT ["/my-entrypoint.sh"]
CMD ["apache2-foreground"]
