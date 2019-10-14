# Configuration eth1 et eth2
# avec service radvd
# RAPPEL: eth0 est à vagrant, ne pas y toucher

## Désactivation de network-manager
NetworkManager:
  service:
    - dead
    - enable: False
    
## Configuration de VM2
eth1:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - enable_ipv4: false
    - ipv6proto: static
    - enable_ipv6: true
    - ipv6_autoconf: no
    - ipv6ipaddr: fc00:1234:1::2
    - ipv6netmask: 64

eth2:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - enable_ipv4: false
    - ipv6proto: static
    - enable_ipv6: true
    - ipv6_autoconf: no
    - ipv6ipaddr: fc00:1234:2::2
    - ipv6netmask: 64

## No need to add routes

## But enable ipv6 forwarding
net.ipv6.conf.all.forwarding:
  sysctl:
    - present
    - value: 1

## Install and configure radvd
radvd:
  pkg:
    - installed
  service:
    - running
    - enable: True

/etc/radvd.conf:
    file.managed:
      - source: /vagrant/radvd.conf
      - user: root
      - group: root
      - mode: 644

# restart radvd:
service radvd restart:
  cmd:
    - run
