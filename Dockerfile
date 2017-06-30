FROM alpine:latest

LABEL author="Jat <chat@jat.email>"
ARG VER
LABEL version=$VER

COPY dtunnel /usr/local/bin
COPY dtunnel_s /usr/local/bin
RUN chmod 755 /usr/local/bin/dtunnel
RUN chmod 755 /usr/local/bin/dtunnel_s

EXPOSE 5050 5060

ENTRYPOINT ["/usr/local/bin/dtunnel_s"]
CMD ["-addr=0.0.0.0:5050", "-addrudp=0.0.0.0:5060"]
