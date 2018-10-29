FROM docker.Shasi.com/images/alpine-jre

ADD build/distributions/restfulapp.tar /

ENTRYPOINT ["/restfulapp/bin/restfulapp"]
