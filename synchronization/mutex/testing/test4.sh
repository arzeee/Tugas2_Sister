#!/bin/bash
# Script Penyerang (Client)

echo "=== Melakukan Race Condition (Berebut Resource) ==="
echo "Node 1 diminta simpan MERAH"
echo "Node 2 diminta simpan BIRU"
echo "Node 3 diminta simpan HIJAU"

python3 kvclient.py \
  --nodes 192.168.0.11:8000,192.168.0.12:8000,192.168.0.13:8000 \
  -- race "PUT color MERAH" "PUT color BIRU"
