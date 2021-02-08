# ntpserver
NTP server in a container.

More/better documentation to come.

Standard docker things...

To run container:
docker run --name ntpserver --restart=always --detach --publish=123:123/udp ntpserver