#!/bin/bash
# Script untuk Node 2 (192.168.0.12)

USE_MUTEX=0

echo "=== Menjalankan Node 2 (Tanpa Mutex) ==="
python3 ../program/kv.py \
  --id 2 \
  --tcp 8000 \
  --udp 8100 \
  --peers 192.168.0.11:8000=1,192.168.0.13:8000=3 \
  --logger-addr 192.168.0.10:9000 \
  --numnodes 3 \
  --use-mutex $USE_MUTEX
