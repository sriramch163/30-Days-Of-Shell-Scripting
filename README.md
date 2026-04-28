# 30 Days of Shell Scripting

Welcome to the **30 Days of Shell Scripting** repository! This is a comprehensive learning journey designed to help you master shell scripting for system administration, DevOps, and automation tasks. Over 30 days, you'll progress from basic system monitoring to advanced tools like Docker, Kubernetes, and CI/CD integration.

## Overview

Each day focuses on a specific scripting challenge, building your skills incrementally. The repository is organized into daily folders, each containing:
- A shell script (`.sh` file)
- A detailed README with usage instructions and examples

## Daily Challenges

| Day | Challenge | Description |
|-----|-----------|-------------|
| [Day 1](Day%20-%2001/) | Disk Alert | Monitors disk usage and sends alerts if above threshold |
| [Day 2](Day%20-%2002/) | Top Memory Consuming Processes | Lists the top 5 processes using the most memory |
| [Day 3](Day%20-%2003/) | Service Status Checker | Checks whether a given service is running, stopped, or not installed |
| [Day 4](Day%20-%2004/) | Auto Create User Script | Creates a new Linux user and sets a password using command-line arguments |
| [Day 5](Day%20-%2005/) | Log Error Highlighter | Scans a log file and highlights ERROR, FAILED, and CRITICAL entries |
| [Day 6](Day%20-%2006/) | Folder Size Analyzer | Shows folder sizes inside a given directory and sorts them from largest to smallest |
| [Day 7](Day%20-%2007/) | System Health Report | Provides a quick overview of system health including CPU, memory, and disk usage |
| [Day 8](Day%20-%2008/) | Server Reachability Checker | Checks whether multiple servers or domains are reachable using ping |
| [Day 9](Day%20-%2009/) | Port Availability Checker | Checks whether a specific port on a host is open or closed |
| [Day 10](Day%20-%2010/) | Public and Private IP Finder | Displays the machine's public IP and private IP addresses |
| [Day 11](Day%20-%2011/) | DNS Resolution Checker | Checks whether a domain resolves to an IP address using DNS |
| [Day 12](Day%20-%2012/) | File Download and Checksum Verification | Downloads a file and verifies its SHA256 checksum to ensure file integrity |
| [Day 13](Day%20-%2013/) | Website Health Checker | Checks whether a website or API endpoint is returning HTTP 200 |
| [Day 14](Day%20-%2014/) | Active Network Connections Viewer | Displays active network connections and listening ports |
| [Day 15](Day%20-%2015/) | Docker Unused Images Cleaner | Removes unused Docker images to free disk space |
| [Day 16](Day%20-%2016/) | Docker Container Resource Monitor | Displays resource usage statistics for running Docker containers |
| [Day 17](Day%20-%2017/) | Docker Image Builder with Timestamp | Builds a Docker image and tags it using the current timestamp |
| [Day 18](Day%20-%2018/) | Kubernetes Context Viewer | Displays the current Kubernetes context and namespace |
| [Day 19](Day%20-%2019/) | Kubernetes Pod Restart Checker | Lists pods with restart counts greater than zero |
| [Day 20](Day%20-%2020/) | Kubernetes Logs Fetcher | Fetches logs from all pods in a namespace using a label selector |
| [Day 21](Day%20-%2021/) | Kubernetes Pod Status Dashboard | Summarizes pod statuses across all namespaces |
| [Day 22](Day%20-%2022/) | Git Auto Pull Script | Automatically pulls the latest changes for multiple Git repositories |
| [Day 23](Day%20-%2023/) | Git Merged Branch Cleanup | Deletes local Git branches that have already been merged |
| [Day 24](Day%20-%2024/) | Jenkins Job Trigger Script | Triggers a Jenkins job using the Jenkins REST API |
| [Day 25](Day%20-%2025/) | SBOM Generator using Syft | Generates a Software Bill of Materials (SBOM) for a Docker image or directory |
| [Day 26](Day%20-%2026/) | Docker Image Vulnerability Scanner | Scans a Docker image for vulnerabilities using Grype |
| [Day 27](Day%20-%2027/) | Terraform Format and Validate Script | Formats Terraform files and validates the configuration |
| [Day 28](Day%20-%2028/) | File Backup Script | Creates a backup of a file by appending a timestamp |
| [Day 29](Day%20-%2029/) | Environment Variable Validator | Checks whether required environment variables are set |
| [Day 30](Day%20-%2030/) | Full System Health Check | Performs a complete system and DevOps health check including CPU, memory, disk, Docker, Kubernetes, and network status |

## Prerequisites

- Linux/Unix environment (or WSL on Windows)
- Bash shell
- Basic knowledge of Linux commands
- For later days: Docker, Kubernetes, Git, Jenkins, Terraform (as applicable)

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/sriramch163/30-Days-Of-Shell-Scripting.git
   cd 30-Days-Of-Shell-Scripting
   ```

2. Navigate to any day's folder:
   ```bash
   cd "Day - 01"
   ```

3. Make the script executable and run it:
   ```bash
   chmod +x script-name.sh
   ./script-name.sh
   ```

4. Check the README.md in each folder for specific usage instructions and examples.

## Learning Path

The challenges are designed to build progressively:
- **Days 1-10**: Basic system monitoring and network utilities
- **Days 11-20**: Advanced networking, file operations, and container basics
- **Days 21-30**: DevOps tools integration and comprehensive automation

## Contributing

Feel free to contribute by:
- Improving existing scripts
- Adding more detailed explanations
- Suggesting new challenges
- Reporting bugs or issues

## License

This project is open source and available under the [MIT License](LICENSE).

---

Happy scripting! 🚀