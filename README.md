# Linux Infrastructure & Monitoring Home Lab
A small Linux infrastructure home lab built to practice system administration, monitoring, containerization, networking, and troubleshooting.
The project includes a Zabbix monitoring server, a separate monitored Ubuntu host, and a containerized web service running with Docker Compose and Nginx.
The main goal of this lab is to simulate basic tasks performed by a Junior NOC Engineer, System Administrator, or DevOps Engineer.

## Architecture

                       Host Machine
                          Windows
                             |
                   VirtualBox Host-Only
                      192.168.56.0/24
                             |
             +---------------+---------------+
             |                               |
             v                               v

      Ubuntu Monitoring VM             Ubuntu Agent VM
       192.168.56.101                  192.168.56.102
             |                               |
             |                               |
     +-----------------+             +----------------+
     | Zabbix Server   |             | Zabbix Agent 2 |
     | MySQL           |             | Linux metrics  |
     | Apache / PHP    |             +----------------+
     | Zabbix Agent 2  |
     +-----------------+
             |
             |
        Docker Compose
             |
       +-----+------+
       |            |
     Nginx       Backend
                  :8000
