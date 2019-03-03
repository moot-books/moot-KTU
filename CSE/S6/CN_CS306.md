---
title: Computer Networks
subtitle: KTU S6 CSE CS306
---

# Introduction to Computer Networks

## Introduction 
A computer network or data network, is a digital telecommunication network which allows nodes to share resources. In computer networks, networked computing devices exchange data with each other using datalink. The connection b/w nodes are established using either cable media or wireless media.

**Objectives**

* Transfer data from one machine to another.
* Facilitate sharing of data
* Facilitate access of remote information

**Application**

* World Wide Web
* Online Social Networks
* Email

## Network Hardware 
There are two types of transmission technology

1. Broadcast links
2. Point to Point Links

Broadcast networks have single communication channel that is shared by all machines on network packets (short messages** sent by any machine are recieved by all others. Address fields with the packet specifies intended recipient. Upon recieving machine checks address field. 

If the packet is intended for recieving, it processes the packet else ignores it.

**Broadcasting** : Possibility of addressing packet to all destinations by using special code in address field. It is recieved and processed by every machine on the network.

**Multicasting** : Source node sends message to some subset of other nodes, but not all of them.

**Unicasting** : Point to Point transmission with one sender and one reciever.

## Types of Networks
Classification of networks based on scale and distance

| Distance  | Located in Same | Example  |
|-----------|-----------------|----------|
| 1 m       | Square Meter    | PAN      |
| 10 m      | Room            | LAN      |
| 100 m     | Building        | LAN      |
| 1 Km      | Campus          | LAN      |
| 10 Km     | City            | MAN      |
| 100 Km    | Country         | WAN      |
| 1000 Km   | Contitent       | WAN      |
| 10,000 Km | Planet          | Internet |

### Personal Area Network (PAN)
PAN are mainly set up for single person use. It consititues of basic devices interacting with a master device.

* Uses master slave paradigm
* PC acts as the master connecting the keyboard, mouse as slaves. 

![Master Slave Diagram](assets/cs306_panconnection.png){#fig:panconnection width=50%}

### LAN 
Local Area Networks provide network access within closed areas such as single buildings. They are used to connect local workstations in company offices and factories to interconnect local devices and to exchange information.

LAN's are distinguished from other kinds of networks by three characteristics

1. Size
2. Transmission Technology
3. Topology

LAN's are restricted in size to single buildings. They are also called enterprise network. 

Here the network may be arranged in any one of the following topologies.

**Bus Topology** : Every machine is connected to all other machines through a single bus line. Only a single machine can transmit at a time. When one machine is transmitting all other machines should only be listening.

![Bus Topology](assets/cs306_bustopology.png){#fig:bustopology width=50%}

**Ring Topology** : A ring network is a network topology in which each node connects to exactly two other nodes, forming a single continuous pathway for signals through each node - a ring. Data travels from node to node, with each node along the way handling every packet.

![Ring Topology](assets/cs306_ringtopology.png){#fig:bustopology width=50%}

### MAN
A metropolitan area network (MAN) is a computer network that interconnects users with computer resources in a geographic area or region larger than that covered by even a large local area network (LAN) but smaller than the area covered by a wide area network (WAN). 

![MAN Network](assets/cs306_mannetwork.png){#fig:mannetwork width=30%}

It has a range of 5 to 50 kilometres.

### WAN
A wide area network (WAN) is a network that exists over a large-scale geographical area. A WAN connects different smaller networks, including local area networks (LANs) and metro area networks (MANs). This ensures that computers and users in one location can communicate with computers and users in other locations.

### Internetwork
Collection of Interconnected networks is called an Internetwork or Internet.

Gateways are machines that make connections between two or more networks, and provide neccesary transalation both in terms of hardware and software.

