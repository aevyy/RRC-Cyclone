#!/bin/bash

echo "=========================================="
echo "    RRC Storming Attack Test Script"
echo "=========================================="
echo ""
echo "This script demonstrates the integrated RRC storming attack in srsUE."
echo ""
echo "Instructions:"
echo "1. Run srsUE with: ./build/srsue/src/srsue"
echo "2. Wait for UE to attach to network"
echo "3. Press 'fd' + Enter to trigger RRC storming attack"
echo "4. Press 'q' + Enter to quit"
echo ""
echo "The attack will:"
echo "- Generate random UE identities (TMSI, MMEC)"
echo "- Send continuous RRC Connection Requests"
echo "- Simulate UE state transitions (idle <-> connected)"
echo "- Run for up to 1000 attacks with 100ms intervals"
echo ""
echo "WARNING: Only use in authorized testing environments!"
echo "=========================================="
echo ""

# Check if srsUE binary exists
if [ ! -f "./build/srsue/src/srsue" ]; then
    echo "ERROR: srsUE binary not found. Please build srsUE first with:"
    echo "  cd /home/avi/wireless/srsran_4g/build && make -j4"
    exit 1
fi

echo "srsUE binary found. Starting test..."
echo ""

# Run srsUE with the configuration
./build/srsue/src/srsue
