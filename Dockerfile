FROM a1fred/docker-python-phantomjs

WORKDIR /home

COPY . .

RUN pip install -r requirements.txt && \
    chmod -R 777 /home && \
    ls /usr/share/zoneinfo && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" >  /etc/timezone

CMD ["python","./main.py"]


# docker build -t  harbor.daishub.com/kangaroo/kangaroo-gh:latest .