# Setup steps

```console
git clone https://github.com/janorga/craft-dvwa.git
cd craft-dvwa
docker build -t craft-dvwa:latest .
sudo docker run --rm -it --network host -p 80:80 craft-dvwa
```