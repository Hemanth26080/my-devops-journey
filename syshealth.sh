#!/bin/bash

# Create: system_health.sh
#!/bin/bash

echo "🔍 System Health Report - $(date)" >> health.log
echo "💻 Hostname: $(hostname)" >> health.log
echo "🌐 IP Address: $(ip addr show | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d/ -f1)" >> health.log
echo "💾 Disk Usage:" >> health.log
df -h / >> health.log
echo "📊 CPU & Memory:" >> health.log
top -bn1 | head -10 | tail -5 >> health.log
echo "----------------------------" >> health.log

echo "✅ Report generated in health.log"