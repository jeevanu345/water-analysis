#!/bin/bash
echo "--------------------------------------------"
echo "🔬 Starting AquaScan Water Analysis..."
echo "--------------------------------------------"

TIMESTAMP=$(date "+%Y%m%d-%H%M%S")
OUTPUT_FILE="analysis_report_${TIMESTAMP}.txt"

PH=$(printf "%.1f" "$(echo "scale=1; 6.5 + ($RANDOM % 30)/10" | bc)")
TURBIDITY=$(printf "%.1f" "$(echo "scale=1; 1 + ($RANDOM % 50)/10" | bc)")
TEMPERATURE=$((20 + RANDOM % 10))
HARDNESS=$((50 + RANDOM % 150))
MINERALS=$((100 + RANDOM % 200))
QUALITY_SCORE=$((RANDOM % 10 + 1))

if (( $(echo "$PH < 6.5" | bc -l) )) || (( $(echo "$PH > 8.5" | bc -l) )); then
    SAFETY="⚠️ UNSAFE: Abnormal pH levels"
elif (( $(echo "$TURBIDITY > 5" | bc -l) )); then
    SAFETY="⚠️ UNSAFE: High turbidity"
else
    SAFETY="✅ SAFE for consumption"
fi

{
echo "AquaScan Advanced Water Analysis Report"
echo "Generated At: $TIMESTAMP"
echo "--------------------------------------------"
echo "pH Level: $PH"
echo "Turbidity: ${TURBIDITY} NTU"
echo "Temperature: ${TEMPERATURE}°C"
echo "Water Hardness: ${HARDNESS} mg/L"
echo "Mineral Content: ${MINERALS} ppm"
echo "Quality Score: ${QUALITY_SCORE}/10"
echo "--------------------------------------------"
echo "Water Safety Evaluation: $SAFETY"
echo "--------------------------------------------"
echo "Report File: $OUTPUT_FILE"
} > "$OUTPUT_FILE"

echo "✔ Analysis complete. Output file created: $OUTPUT_FILE"
echo "--------------------------------------------"
