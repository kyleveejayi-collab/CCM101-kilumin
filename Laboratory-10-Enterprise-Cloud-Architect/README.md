# CCM101 – Mission 10: The Enterprise Cloud Architect

## Project Overview

This project is the final laboratory activity for CCM101 – Cloud Computing.

The project implements a secure and persistent multi-tier web application using:

- VirtualBox Type 2 Hypervisor
- Ubuntu Server
- Docker
- Docker Compose
- WordPress
- MySQL
- UFW Firewall
- Bash Automation
- Cron Job

The main goal is to design, deploy, secure, automate, and document a complete cloud infrastructure.

---

## Application Stack

| Component | Technology |
|---|---|
| Host Operating System | Windows 11 |
| Hypervisor | Oracle VirtualBox |
| Server OS | Ubuntu Server |
| Container Platform | Docker |
| Container Orchestration | Docker Compose |
| Web Application | WordPress |
| Database | MySQL 8.0 |
| Firewall | UFW |
| Automation | Bash Script |
| Scheduler | Cron |

---

## Architecture

The infrastructure follows this general architecture:

```text
Windows 11 Host
       |
       | Host-Only Network
       |
VirtualBox Type 2 Hypervisor
       |
       v
Ubuntu Server VM
192.168.56.101
       |
       v
UFW Firewall
   |        |
  SSH      HTTP
  22        80
             |
             v
       Docker Engine
             |
       Docker Compose
          /       \
         /         \
        v           v
   WordPress      MySQL
      |              |
      v              v
wordpress_data   mysql_data
192.168.56.101
