#!/bin/bash
echo "🔍 Validating Grafana dashboards..."

for file in grafana/dashboards/*.json; do
  echo "Checking $file"
  jq empty "$file"
done

echo "✅ Grafana dashboards are valid JSON"