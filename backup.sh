# backup.sh
#!/bin/bash
echo "Backing up Documents at $(date)" >> backup.log
cp -r ~/Documents/*.txt ./backups/ 2>/dev/null || echo "No .txt files found"
git add .
git commit -m "Auto-backup: $(date)" 2>/dev/null || echo "No changes to commit"
git push origin main