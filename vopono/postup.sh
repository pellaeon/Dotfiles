#!/bin/bash

vopono_netnss=$(ip netns | awk '{ print $1 }' | grep vopono)

for netns in $vopono_netnss
do
	interface=$(ip -o link show 2>/dev/null | grep $netns | awk '{print substr($2, 1, length($2)-1)}' | awk -F'@' '{print $1}')
	#interface=$(ip -o link show 2>/dev/null | grep $netns | awk -F'[ :@]' '{print $2}')
	outipaddr=$(ip -o address show $interface scope global | grep inet | awk '{print $4}' | awk -F'/' '{print $1}')
	# Allow netns to use SSH SOCKS proxy. Run `autossh -D 10.200.1.1:3200 user@host` outside
	# 10.200.1.1 is the ip addr of host veth, 10.200.1.1 is for the first vopono netns, 10.200.2.1 for the second
	sudo ip netns exec $netns iptables -t filter -I OUTPUT 1 -p tcp -d $outipaddr --dport 3200 -j ACCEPT
	in_interface=$(sudo ip netns exec $netns ip -o link | grep 'link/ether' | awk '{print substr($2, 1, length($2)-1)}' | awk -F'@' '{print $1}')

	# Allow reaching local network 192.168.50.163:9091 from inside the namespace
	sudo ip netns exec $netns ip route add 192.168.50.163 via $outipaddr dev $in_interface
	sudo ip netns exec $netns iptables -t filter -I OUTPUT 1 -p tcp -d 192.168.50.163 --dport 9091 -j ACCEPT
done
