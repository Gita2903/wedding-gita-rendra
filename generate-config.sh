#!/bin/sh
# Jalanin script ini pas build/deploy, SEBELUM serve file statisnya.
# Butuh `envsubst` (biasanya udah ada bawaan Linux, paket gettext-base).
envsubst < config.template.js > config.js
echo "config.js berhasil di-generate dari environment variable."
