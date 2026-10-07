
# Final Reflection
## CCM101 – Mission 10: The Enterprise Cloud Architect

This final mission allowed me to combine the different concepts that I learned throughout CCM101 – Cloud Computing into one complete project.

For this project, I designed and deployed a multi-tier web application using WordPress and MySQL. I used VirtualBox to create an Ubuntu Server virtual machine and configured its networking so that I could access the application from my Windows host.

One of the important parts of the project was learning how Docker and Docker Compose can be used to organize multiple services. Instead of installing WordPress and MySQL directly on the Ubuntu operating system, I deployed them as separate containers. This helped me understand how application services can communicate through a Docker network.

I also learned the importance of persistent storage. The project uses named Docker volumes for WordPress and MySQL. I tested the persistence by stopping and starting the containers and checking that the WordPress content remained available.

Security was another important part of the project. I configured UFW with a default-deny incoming policy and allowed only the ports needed by the application and for SSH administration. This helped me understand the importance of limiting unnecessary network access.

The automation portion of the project helped me understand how system administration tasks can be automated. I created a Bash script that performs a MySQL database backup and configured a Cron job to run the script automatically.

During the project, I also encountered problems and had to troubleshoot them. One example was correcting the Docker Compose configuration when the YAML structure contained an error. This helped me understand that small configuration mistakes can prevent an entire application stack from starting.

Overall, this project helped me connect the concepts of virtualization, Linux administration, networking, Docker, security, persistent storage, automation, and documentation.

The biggest lesson I learned from this mission is that deploying an application is not only about making it work. A complete infrastructure must also be secure, persistent, automated, documented, and maintainable.

If I were to improve this project in the future, I would add more monitoring, improve the backup and recovery process, and explore additional security and availability features.

This final mission gave me a better understanding of how the different topics from the course can be combined into a practical cloud infrastructure.

