#!/bin/sh
# Generate public/config.js dari environment variable, pake Node.js
# (dipilih karena Node dijamin ada di build image Vercel, beda sama envsubst)
node -e "
const fs = require('fs');
const template = fs.readFileSync('config.template.js', 'utf8');
const output = template
  .replace('\\\${SUPABASE_URL}', process.env.SUPABASE_URL || '')
  .replace('\\\${SUPABASE_ANON_KEY}', process.env.SUPABASE_ANON_KEY || '');
fs.writeFileSync('public/config.js', output);
console.log('config.js berhasil di-generate di public/config.js');
"
