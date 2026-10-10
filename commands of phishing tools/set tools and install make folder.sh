# Step 1: Phishing page folder banao
mkdir -p /root/phishing_page

# Step 2: PHP install karo (agar nahi hai)
sudo apt install php -y

# Step 3: Ngrok install karo (agar nahi hai)
cd /tmp
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvzf ngrok-stable-linux-amd64.tgz
sudo mv ngrok /usr/local/bin/
ngrok config add-authtoken TERA_AUTH_TOKEN_YAHAN_DAAL