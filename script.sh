#!/bin/bash
# Ce script génère automatiquement les fichiers de réponses pour les questions à choix multiples

# 0-OSI_model
echo "#!/bin/bash
# Ce script contient les réponses pour les questions sur le modèle OSI
2
2" > 0-OSI_model

# 1-types_of_network
echo "#!/bin/bash
# Ce script contient les réponses pour les questions sur les types de réseaux
3
2
1" > 1-types_of_network

# 2-MAC_and_IP_address
echo "#!/bin/bash
# Ce script contient les réponses pour les questions sur les adresses MAC et IP
2
1" > 2-MAC_and_IP_address

# 3-UDP_and_TCP
echo "#!/bin/bash
# Ce script contient les réponses pour les questions sur UDP et TCP
1
2
1" > 3-UDP_and_TCP

# 4-TCP_and_UDP_ports
echo '#!/bin/bash
# Ce script affiche les ports en écoute et les programmes associés
netstat -tuln | grep LISTEN' > 4-TCP_and_UDP_ports

# 5-is_the_host_on_the_network
echo '#!/bin/bash
# Ce script vérifie si un hôte est sur le réseau en utilisant ping
if [ "$#" -eq 0 ]; then
    echo "Usage: 5-is_the_host_on_the_network {IP_ADDRESS}"
    exit 1
fi
ping -c 5 "$1"' > 5-is_the_host_on_the_network

# Rendre les scripts exécutables
chmod +x 0-OSI_model 1-types_of_network 2-MAC_and_IP_address 3-UDP_and_TCP 4-TCP_and_UDP_ports 5-is_the_host_on_the_network

echo "Fichiers de réponses générés avec succès."
