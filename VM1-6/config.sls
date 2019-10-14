# Configuration eth1
# RAPPEL: eth0 est à vagrant, ne pas y toucher

## Désactivation de network-manager
NetworkManager:
  service:
    - dead
    - enable: False
    
## Suppression de la passerelle par défaut
##ip -6 route del default:
##  cmd:
##   - run

##Configuration de VM1
eth1:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - enable_ipv4: false
    - ipv6proto: auto
    - enable_ipv6: true
    - ipv6_autoconf: yes

## Configuration de la route vers LAN2 via VM2
## -> annoncée


