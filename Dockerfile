#Base Image
FROM alpine:latest

#Install Chrony
RUN apk add --no-cache chrony

#Copy Chrony Conf File
COPY chrony.conf /etc/chrony/chrony.conf

#Copy run script
COPY run.sh /opt/run.sh

#Expose NTP Port
EXPOSE 123/udp

# Test container health (courtesy github.com/cturra)
HEALTHCHECK CMD chronyc tracking || exit 1

ENTRYPOINT [ "/bin/sh", "/opt/run.sh" ]