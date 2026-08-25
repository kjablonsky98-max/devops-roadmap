# Linux Networking

## Interfejsy i adresy IP

```bash
ip -br a 
```
## Routing
```bash
ip route 
ip route get 1.1.1.1
```
## Diagnostyka połączenia 
```bash
ping -c 4 10.0.2.2
ping -c 4 1.1.1.1
ping -c 4 github.com		
```
## DNS
```bash
dig github.com 
resolvectl query github.com 
```
## Porty i nasłuchujące usługi 
```bash
sudo ss -tulnp 
sudo ss -tlnp | grep :22
```
## HTTP/HTTPS
```bash
curl -I https://github.com
curl http://127.0.0.1:8080
```
## Test konkretnego portu
```bash
nc -vz github.com 443
nc -vz github.com 22 
```
## Trasa pakietów 
```bash
traceroute -n 1.1.1.1
```

## Schemat diagnostyczny
1. Sprawdź adres IP.
2. Sprawdź bramę i routing.
3. Sprawdź połączenie po adresie IP.
4. Sprawdź DNS.
5. Sprawdź, czy wymagany port nasłuchuje.
6. Sprawdź aplikację za pomocą `curl`.

