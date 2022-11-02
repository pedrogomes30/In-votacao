#!/bin/bash
set -e

mongo <<EOF
use admin
db.createUser({
  user:  'example,
  pwd: 'example_',
  roles: [{
    role: 'readWrite',
    db: 'hubdata'
  }]
})
EOF