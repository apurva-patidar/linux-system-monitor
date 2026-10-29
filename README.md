
# Linux System Monitoring Tool

A beginner-friendly Linux system monitoring tool built
using Bash scripting.

## Overview

This project monitors basic Linux system information
and displays a report in the terminal. It also saves
monitoring output to a log file.

## Features

- Displays hostname and current date
- Shows CPU load information
- Reports RAM usage
- Checks root filesystem disk usage
- Lists the top 5 CPU-consuming processes
- Saves reports to a log file

## Technologies Used

- Linux
- Bash Shell Scripting
- Git
- GitHub

## Project Structure

linux-system-monitor/
├── monitor.sh
├── monitor.log
└── README.md

## Prerequisites

- Linux or Ubuntu on WSL
- Bash shell
- Standard Linux utilities

## How to Run

Clone the repository:

```bash
git clone https://github.com/apurva-patidar/linux-system-monitor.git
cd linux-system-monitor
```

Make the script executable:

```bash
chmod +x monitor.sh
```

Run the monitoring tool:

```bash
./monitor.sh
```

View the saved monitoring report:

```bash
cat monitor.log
```

## Learning Outcomes

- Understanding Bash scripting
- Using Linux monitoring commands
- Working with log files
- Practicing Git version control

## Future Improvements

- Add CPU usage percentage
- Add disk and memory usage alerts
- Generate timestamped reports
- Schedule monitoring with cron

## Author


## Author

**Apurva Patidar**

Aspiring DevOps Engineer | Linux & Bash Scripting Enthusiast

- GitHub: [@apurva-patidar](https://github.com/apurva-patidar)
- Project: Linux System Monitoring Tool

This project was created to strengthen my practical
knowledge of Linux commands, Bash scripting, and
system monitoring as part of my DevOps learning journey.

