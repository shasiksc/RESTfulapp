FROM docker.target.com/tap/alpine-jre

ADD build/distributions/restfulapp.tar /

ENTRYPOINT ["/restfulapp/bin/restfulapp"]