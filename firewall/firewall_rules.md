# Task 2: Firewall Rule Design

| Rule No. | Source | Destination | Protocol/Port | Action | Justification |
| :---: | :--- | :--- | :--- | :---: | :--- |
| **1** | Any (Public/Internet) | Web Server (`192.168.1.10`) | TCP / 443 (HTTPS) | **ALLOW** | Permits secure public access to the school website while encrypting web traffic. |
| **2** | Admin Workstation (`192.168.1.5`) | Web Server & 30 Lab PCs (`192.168.1.0/24`) | TCP / 22 (SSH) & TCP / 3389 (RDP) | **ALLOW** | Restricts administrative shell and remote desktop connections strictly to authorized IT personnel. |
| **3** | Lab Subnet (`192.168.1.0/24`) | Internet Gateway | TCP / 80 (HTTP), TCP / 443 (HTTPS) | **ALLOW** | Enables the 30 desktop PCs to perform educational web browsing and fetch system updates. |
| **4** | Any (External/Internet) | Lab Internal Network (`192.168.1.0/24`) | ANY / ALL | **DENY / BLOCK** | Drops all unsolicited inbound traffic from external networks to isolate lab computers from attacks. |

## Network Protection Summary
These firewall rules enforce the **Principle of Least Privilege**. Public access is isolated strictly to encrypted web server traffic (Rule 1). Management ports (SSH/RDP) are restricted to a single authenticated workstation IP (Rule 2), disabling brute-force threats from student desktops or external bad actors. Outbound student access is filtered to web protocols (Rule 3), while all implicit external ingress attempts are dropped by default (Rule 4).
