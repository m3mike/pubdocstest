# Red Team Setup

- [Red Team Setup](#red-team-setup.)
  - [Red LAN](#red-lan.)
    - [Red LAN Systems to Configure](#red-lan-systems-to-configure.)
    - [Attack Platform - Modin](#attack-platform---modin.)
    - [Jumpbox - Stelio](#jumpbox---stelio.)

## Red LAN

### Red LAN Systems to Configure

### Attack Platform - Modin

- Install
  - Run [kali-prereqs.sh](files/support/kali/kali-prereqs.sh)
  - Follow instructions to setup [watering_hole](watering_hole_README.md)
  - Run [kali-install-custom-certs.sh](files/support/kali/kali-install-custom-certs.sh)
  - Run [kali-update.sh](files/support/kali/kali-update.sh)
  - Run [kali-update-wp.sh](files/support/kali/kali-update-wp.sh)
  - Run [kali-set-nato-int-redirect.sh](files/support/kali/kali-set-nato-int-redirect.sh)
  - Run [kali-send-email.sh](files/support/kali/kali-send-email.sh)
- Configuration
  - Install [kali-postfix-conf.](files/support/kali/kali-postfix-conf) to `/etc/postfix/main.cf`
  - Install [kali-home-cradwell-procmailrc.](files/support/kali/kali-home-cradwell-procmailrc) to `/home/cradwell/.procmailrc`
    - Set proper file ownership on `.procmailrc` file, and make mail directories, run:
      - `mkdir -p /home/cradwell/mail`
      - `chown -R cradwell:cradwell /home/cradwell/.procmailrc /home/cradwell/mail`
  - Enable and start postfix, run:
    - `systemctl enable --now postfix`
  - Ensure Apache and Mariadb are enabled
    - `systemctl enable --now mysql`
    - `systemctl enable --now apache2`

### Jumpbox - Stelio

The Windows Jumpbox requires minimal configuration.

- Configuration
  - Run [chocolatey-install.ps1](files/common/chocolatey-install.ps1)
  - Run [choco-install-packages.ps1](files/common/choco-install-packages.ps1)
  - Run [disable-firewall.ps1](files/common/disable-firewall.ps1)
  - Run [configure-jumpbox.ps1](files/common/configure-jumpbox.ps1)
