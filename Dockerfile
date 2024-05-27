FROM alpine:3.19

RUN apk update \
    apk add wine==9.9-r0 winetricks


ARG APPLICATION_USER=appuser
RUN adduser --no-create-home -u 1000 -D $APPLICATION_USER && \
    mkdir /app && \
    chown -R $APPLICATION_USER /app
USER 1000

COPY --chown=1000:1000 ./setup.exe /app/setup.exe
WORKDIR /app

EXPOSE 8080


ARG WINEPREFIX='~/.winewin7'
CMD ["${WINEPREFIX}" "wine" "./SETUP.EXE"]

ENTRYPOINT ["/bin/sh"]
