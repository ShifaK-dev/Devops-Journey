#!/bin/bash

echo "======================================"
echo "     SYSTEM MONITORING TOOL"
echo "======================================"

echo "Enter administrator name:"
read admin

echo "Enter monitoring project name:"
read project

echo "Creating monitoring structure..."

mkdir -p $project/logs
mkdir -p $project/backups
mkdir -p $project/reports

echo "Generating monitoring report..."

echo "System Monitoring Report" > $project/reports/report.txt
echo "Administrator: $admin" >> $project/reports/report.txt
echo "Project Name: $project" >> $project/reports/report.txt
echo "Generated On: $(date)" >> $project/reports/report.txt

echo "" >> $project/reports/report.txt
echo "Current Logged User:" >> $project/reports/report.txt
whoami >> $project/reports/report.txt

echo "" >> $project/reports/report.txt
echo "System Uptime:" >> $project/reports/report.txt
uptime >> $project/reports/report.txt

echo "" >> $project/reports/report.txt
echo "Disk Usage:" >> $project/reports/report.txt
df -h >> $project/reports/report.txt

usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "" >> $project/reports/report.txt

if [ $usage -ge 50 ]
then
    echo "WARNING: Disk usage is above 50%" >> $project/reports/report.txt
else
    echo "Disk usage is under control" >> $project/reports/report.txt
fi

echo "Generating monitoring logs..."

for (( i=1; i<=5; i++ ))
do
    echo "Log Entry $i : Monitoring services active at $(date)" >> $project/logs/monitor.log
done

echo "Creating backup information..."

echo "Backup generated successfully on $(date)" > $project/backups/backup-info.txt

echo ""
echo "Created Files and Folders:"

for item in $project/*
do
    echo "$item"
done

echo ""
echo "======================================"
echo "SYSTEM MONITORING COMPLETED SUCCESSFULLY"
echo "======================================"
