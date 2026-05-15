#!/bin/bash
# Install 23319's laptop SSH key into ~deploy/.ssh/authorized_keys
set -e
mkdir -p ~deploy/.ssh
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMOZkGxdQDYxAREw1oBAn+KoRNpUSjegOWtDeiy42du1 23319@laptop-bandori-deploy-2026-05-15' >> ~deploy/.ssh/authorized_keys
chown -R deploy:deploy ~deploy/.ssh
chmod 700 ~deploy/.ssh
chmod 600 ~deploy/.ssh/authorized_keys
echo "[OK] key installed for deploy user. fingerprint:"
ssh-keygen -lf ~deploy/.ssh/authorized_keys | tail -1
