# Linux System Monitoring Script (Red Hat)

## Description
A lightweight **Bash script** to monitor your Linux system resources on Red Hat-based distributions (RHEL, Rocky, AlmaLinux).  
It tracks **CPU**, **Memory**, and **Disk usage**, logs the results, and provides **alerts** if disk usage exceeds a set threshold.  
Perfect for system administrators and DevOps beginners to automate basic system monitoring.

---

## Features
- Monitor **CPU usage**
- Monitor **Memory usage**
- Monitor **Disk usage**
- Generate **log files** for historical records
- **Disk usage alert** if it exceeds a threshold (default: 80%)
- **Cron job compatible** for automatic periodic monitoring

---

## Usage
1. Clone the repository:
```bash
git clone https://github.com/hazem20/linux-system-monitor.git
cd linux-system-monitor
