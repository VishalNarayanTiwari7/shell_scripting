#!/bin/bash
<< help
this is a shell script to take backups
can also be used with cron
help
source_dir="/mnt/d/devops_ubuntu/shell_scripting"
destination_dir="/mnt/d/devops_ubuntu/backup_of_shell_scripting"

timestamp=$(date "+%Y-%m-%d-%H-%M")

backup_dir="${destination_dir}/backup_of_shell_scripting_${timestamp}"
zip -r "${backup_dir}.zip" "$source_dir"
echo "backup completed"
