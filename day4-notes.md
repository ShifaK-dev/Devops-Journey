# Day 4 Notes

## Client and Server

### Client
- Device/application requesting data
- Example: browser, mobile app, laptop

### Server
- Computer that provides services/data
- Stores websites and processes requests

## Internet Communication Flow

Client
→ DNS lookup
→ IP address found
→ Request travels through internet
→ Server receives request
→ Server sends response
→ Browser displays website

## IP Address

### IP Address
- Unique address of device on network

### Private IP
- Used inside local/home networks
- Example: 192.168.x.x

### Localhost
- 127.0.0.1
- Computer communicating with itself

## Linux Networking Commands

### ip a
- Shows network interfaces and IP addresses

### ping
- Tests network connectivity
- Sends packets to another server/device

## DNS

### DNS
- Domain Name System
- Converts domain names into IP addresses

Example:
google.com → IP address

## Ports

### Port
- Communication channel for a service/application

### Common Ports
- 80 → HTTP
- 443 → HTTPS
- 22 → SSH

## SSH

### SSH
- Secure Shell
- Used for secure remote access to servers

### SSH Port
- Uses port 22 by default

## HTTP vs HTTPS

### HTTP
- HyperText Transfer Protocol
- Normal web communication
- Not encrypted

### HTTPS
- HTTP Secure
- Encrypted and secure communication

## ss -tuln

### ss -tuln
- Shows listening ports and network connections

## Important Concepts Learned

- Client vs server architecture
- Computers communicate using IP addresses
- DNS converts names to IPs
- Ports identify services on a computer
- HTTPS provides encrypted communication
- Internet works through requests and responses