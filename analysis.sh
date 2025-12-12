cat > analysis.sh << 'EOF'
#!/bin/bash
# Water Analysis Simulation Script

# --- Start Analysis ---
echo "Starting AquaScan water analysis..."

# Simulate a calculation
TIMESTAMP=$(date "+%Y%m%d-%H%M%S")
OUTPUT_FILE="analysis_report_${TIMESTAMP}.txt"
WATER_QUALITY=$((RANDOM % 10 + 1)) # Random quality score 1-10

# Simulate generating the output artifact
echo "Report generated at: $TIMESTAMP" > $OUTPUT_FILE
echo "Water Quality Score: $WATER_QUALITY/10" >> $OUTPUT_FILE
echo "----------------------------" >> $OUTPUT_FILE
echo "Details: pH 7.2, Turbidity 5 NTU." >> $OUTPUT_FILE

echo "Analysis complete. Output file created: $OUTPUT_FILE"
# --- End Analysis ---
EOF
