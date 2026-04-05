#!/bin/bash


<< readme
This is a script for backup with 5 days of rentention period.
Usage: ./backup.sh <source> <destination>
readme

display_usage() {
	echo "Usage: ./backup.sh <source> <destination>"
}

if [[ $# -eq 0 ]]; then    # if arg == 0 means no arg are passed while running the script
	display_usage
fi

source_dir=$1
backup_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

create_backup() {
	zip -r "${backup_dir}/backups_${timestamp}.zip" "${source_dir}" > /dev/null
	
	if [ $? -eq 0 ]; then
		echo "Backup generated successfully for ${timestamp}"
	fi
}

perform_rotation() {
	backups=($(ls -t "${backup_dir}")) 2>/dev/null
	#echo "${backups[@]}"
	
	if [ ${#backups[@]} -gt 5 ]; then
		echo "Performing rotation for 5 days"
		backup_to_remove=("${backups[@]:5}")
		#echo "${backup_to_remove[@]}"
		
		for backup in "${backup_to_remove[@]}";
		do 
			rm -f "${backup_dir}/${backup}"
		done
	fi
}

create_backup
perform_rotation
