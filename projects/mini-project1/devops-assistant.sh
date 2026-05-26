#!/bin/bash

echo "====================================="
echo "     DEVOPS AUTOMATION ASSISTANT"
echo "====================================="

echo "Enter your name:"
read username

echo "Enter project name:"
read project

echo "Creating project structure..."

mkdir -p $project/logs
mkdir -p $project/backup
mkdir -p $project/data

echo "Generating README file..."

echo "# $project" > $project/README.md
echo "Project created by $username" >> $project/README.md

echo "Generating report..."

echo "Project Name: $project" > $project/report.txt
echo "Created By: $username" >> $project/report.txt
echo "Creation Date: $(date)" >> $project/report.txt

echo "Checking project name length..."

if [ ${#project} -ge 5 ]
then
    echo "Project name looks professional!" >> $project/report.txt
else
    echo "Project name is too short." >> $project/report.txt
fi

echo "Creating sample log entries..."

for (( i=1; i<=5; i++ ))
do
    echo "Log Entry $i - System running properly" >> $project/logs/system.log
done

echo "Creating backup info..."

echo "Backup folder created successfully on $(date)" > $project/backup/backup-info.txt

echo "====================================="
echo "Project setup completed successfully!"
echo "====================================="
