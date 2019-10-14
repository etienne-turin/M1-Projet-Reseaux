# Configuration eth1 et eth2
# RAPPEL: eth0 est à vagrant, ne pas y toucher

## Désactivation de network-manager
NetworkManager:
  service:
    - dead
    - enable: False


## Configuration de VM2

# en statique
 eth1:
   network.managed:
     - enabled: True
     - type: eth
     - proto: static
     - enable_ipv4: true
     - enable_ipv6: false
     - ipaddr: 172.16.2.163
     - netmask: 255.255.255.240

# en statique
 eth2:
   network.managed:
     - enabled: True
     - type: eth
     - proto: static
     - enable_ipv4: true
     - enable_ipv6: false
     - ipaddr: 172.16.2.183
     - netmask: 255.255.255.240

# Config Routes
routes:
  network.routes:
    - name: eth0
    - routes:
      - name: LAN1
        ipaddr: 172.16.2.128
        netmask: 255.255.255.240
        gateway: 172.16.2.162
      - name: LAN3
        ipaddr: 172.16.2.144
        netmask: 255.255.255.240
        gateway: 172.16.2.162

