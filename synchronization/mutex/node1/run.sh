#!/bin/bash
# Script untuk Node 1 (192.168.0.11)

# Ganti jadi 1 nanti untuk mengaktifkan Mutex
USE_MUTEX=0

echo "=== Menjalankan Node 1 (Tanpa Mutex) ==="
python3 ../program/kv.py \
  --id 1 \
  --tcp 8000 \
  --udp 8100 \
  --peers 192.168.0.12:8000=2,192.168.0.13:8000=3 \
  --logger-addr 192.168.0.10:9000 \
  --numnodes 3 \
  --use-mutex $USE_MUTEX
