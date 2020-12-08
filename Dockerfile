ARG AD_VERSION=4.0.1

FROM acockburn/appdaemon:${AD_VERSION}

RUN apk update && \
    apk upgrade && \
    apk add gcc musl-dev libffi-dev openssl-dev

RUN pip install --upgrade pip && \
    pip install cryptography==3.2.1

ENTRYPOINT ["./dockerStart.sh"]
