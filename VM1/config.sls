# Configuration eth1 et eth2
# RAPPEL: eth0 est à vagrant, ne pas y toucher

## Désactivation de network-manager
NetworkManager:
  service:
    - dead
    - enable: False


## Configuration de VM1

# en statique
 eth1:
   network.managed:
     - enabled: True
     - type: eth
     - proto: static
     - enable_ipv4: true
     - enable_ipv6: false
     - ipaddr: 172.16.2.131
     - netmask: 28

# en statique
 eth2:
   network.managed:
     - enabled: True
     - type: eth
     - proto: static
     - enable_ipv4: true
     - enable_ipv6: false
     - ipaddr: 172.16.2.151
     - netmask: 28

# Config Routes
routes:
  network.routes:
    - name: eth0
    - routes:
      - name: LAN2
        ipaddr: 172.16.2.160
        netmask: 255.255.255.240
        gateway: 172.16.2.132
      - name: LAN4
        ipaddr: 172.16.2.176
        netmask: 28
        gateway: 172.16.2.132

