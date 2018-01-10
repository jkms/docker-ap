FROM hypriot/rpi-alpine

MAINTAINER John Stafford <john@vanmesh.net>

# ADD files/rt2870.bin /lib/firmware/
RUN apk add --no-cache bash hostapd iptables dhcp docker iproute2 iw

RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD files/wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]
