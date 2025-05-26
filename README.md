# 🗄️ Linux Backup Script

This project contains a shell script to automate backups of a specified directory on a Linux system. The script compresses the directory into a timestamped `.tar.gz` file and logs the process.

## 📂 Project Structure

backup-project/
├── backup.sh # Main backup script
├── backups/ # Directory to store backup files
└── logs/
└── backup_log.txt # Log file for backup activity


## 🚀 Features

- Automates directory backups
- Generates compressed `.tar.gz` archive with timestamp
- Logs success/failure of each run
- Easily configurable and extendable

## 🛠️ Prerequisites

- Bash
- `tar`, `mkdir`, `date` commands
- Linux OS (Tested on Ubuntu)

## 📥 How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/backup-project.git
   cd backup-project

2. Make the script executable:

    bash
    Copy
    Edit
    chmod +x backup.sh
     |-- Edit the script to configure the source folder you want to back up.

3. Run the script manually:

    bash
    Copy
    Edit
    ./backup.sh
   
5. 🕒 Automate with Cron 
      To run the script automatically every day at 12:00 AM:

        bash
        Copy
        Edit
        crontab -e

      Add this line:
        bash
        Copy
        Edit
        0 0 * * * /home/your-user/backup-project/backup.sh

6. 📑 Log Output
        Backup execution logs can be found at:

        bash
        Copy
        Edit
        logs/backup_log.txt
        This will include timestamps and backup statuses.

Author
    Arun
        Created as part of a personal project to practice scripting and automation on Linux systems.

  📜 License
  This project is licensed under the MIT License.

    yaml
    Copy
    Edit








