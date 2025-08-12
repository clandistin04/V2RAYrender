FROM v2fly/v2fly-core:latest

# نسخ ملف الإعدادات إلى داخل الحاوية
COPY config.json /etc/v2ray/config.json

# فتح البورت المستخدم في config.json
EXPOSE 443

# تشغيل V2Ray باستخدام ملف الإعدادات
CMD ["v2ray", "-config=/etc/v2ray/config.json"]
