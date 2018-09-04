FROM python:3-alpine
RUN apk add --no-cache git && pip install -e https://github.com/breeze7086/truffleHog
RUN adduser -S truffleHog
USER truffleHog
WORKDIR /proj
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
