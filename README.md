# quiapt

My apt repo.

## Setting Up This Repo

```
sudo wget -O /usr/share/keyrings/thatqui@proton.me.gpg.key http://deb.quitaxd.online/thatqui@proton.me.gpg.key
sudo bash -c 'echo "deb [signed-by=/usr/share/keyrings/thatqui@proton.me.gpg.key] http://deb.quitaxd.online qui main" >> /etc/apt/sources.list.d/qui.list'
sudo apt update
```
