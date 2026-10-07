
# CCM101 – Cloud Computing
# Enterprise Cloud Architect – Operational Manual

## Project: Secure Multi-Tier Web Application

*Application Stack:* WordPress + MySQL  
*Prepared by:* [YOUR NAME]  
*Section:* [YOUR SECTION]  
*Instructor:* Jenkielyn C. Torres  
*Date:* [DATE]

---

# 1. Introduction

This operational manual documents the deployment, security, operation, backup, and maintenance procedures for the CCM101 Mission 10 Enterprise Cloud Architect project.

The project implements a multi-tier web application using WordPress and MySQL running in Docker containers on an Ubuntu Server virtual machine.

The infrastructure is hosted locally using VirtualBox on a Windows 11 host.

---

# 2. Infrastructure Components

The infrastructure consists of the following components:

- Windows 11 host computer
- VirtualBox Type 2 hypervisor
- Ubuntu Server virtual machine
- Docker Engine
- Docker Compose
- WordPress container
- MySQL container
- UFW firewall
- Bash backup script
- Cron scheduler
- Persistent Docker volumes

---

# 3. Virtual Machine Configuration

The virtual machine is configured with:

- VM Name: CCM101-Ubuntu-Server
- RAM: 4 GB
- CPU: 2 cores
- Storage: 25 GB
- Operating System: Ubuntu Server

Network configuration:

- Adapter 1: NAT
- Adapter 2: Host-only Adapter

The Host-only adapter allows the Windows host to access the Ubuntu Server web application.

Example server address:

```text
192.168.56.101
192.168.56.101
