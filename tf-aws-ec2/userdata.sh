#!/bin/bash

exec > /var/log/user-data.log 2>&1
set -euxo pipefail

# ------------------------------------------------
# Install packages
# ------------------------------------------------

apt-get update -y
apt-get install -y nginx curl cron

systemctl enable --now nginx
systemctl enable --now cron

# ------------------------------------------------
# Download website from GitHub
# ------------------------------------------------

curl -fsSL \
  "https://raw.githubusercontent.com/mumtazbaly/panda-learns-tf-aws/main/tf-aws-ec2/index.html?cachebust=$(date +%s)" \
  -o /var/www/html/index.html

# ------------------------------------------------
# Refresh HTML every 5 minutes
# ------------------------------------------------

cat << 'EOF' > /etc/cron.d/update-html
*/5 * * * * root curl -fsSL "https://raw.githubusercontent.com/mumtazbaly/panda-learns-tf-aws/main/tf-aws-ec2/index.html?cachebust=$(date +\%s)" -o /var/www/html/index.html
EOF

chmod 644 /etc/cron.d/update-html

# ------------------------------------------------
# Verify nginx
# ------------------------------------------------

nginx -t
systemctl restart nginx

echo "Deployment completed successfully."