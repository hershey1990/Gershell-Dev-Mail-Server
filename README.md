# Poste.io Deployment for mail.gershell.dev

This project provides a simple, containerized mail server setup using [Poste.io](https://poste.io/) on AWS Lightsail.

## Prerequisites

- **AWS Lightsail Instance:** Recommended 2GB+ RAM (Ubuntu 22.04 LTS).
- **Port 25:** You MUST request AWS to unblock port 25 for your account/instance.
- **Firewall:** Open ports 25, 80, 110, 143, 443, 465, 587, 993, 995 in the Lightsail Networking tab.

## Quick Start

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd <repo-name>
   ```

2. **Run the setup script:**
   This installs Docker and prepares the data directory.
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

3. **Start the mail server:**
   ```bash
   sudo docker compose up -d
   ```

4. **Initialize:**
   Go to `https://mail.gershell.dev` in your browser to set up the admin password.

## DNS Configuration (Required)

To ensure email deliverability, configure these records in your DNS provider:

- **MX Record:** `@ IN MX 10 mail.gershell.dev.`
- **A Record:** `mail.gershell.dev IN A <Your-VPS-IP>`
- **SPF (TXT):** `v=spf1 mx ~all`
- **DKIM/DMARC:** Generate these inside the Poste.io admin panel after setup.
