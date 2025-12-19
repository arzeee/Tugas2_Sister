#!/bin/bash
echo "=== LOGGER SERVER (Port 9000) ==="
# Pastikan path ke kv.py benar.
# Jika kv.py ada di folder ../program/, pakai ini:
python3 ../program/kv.py --logger --logger-tcp 9000 --numnodes 3
