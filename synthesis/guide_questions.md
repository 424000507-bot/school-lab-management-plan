# Guide Questions and Answers

### 1. Which IT task should be automated first? Why?
**System health monitoring and patch updates.** These routine administrative tasks consume significant manual labor across 30 workstations. Automating health checks allows IT staff to identify failing drives or unpatched systems instantly.

### 2. Which network services should be accessible to public users?
**Only HTTPS (Port 443) on the school web server.** Public access must be restricted strictly to public-facing web pages using SSL/TLS encryption.

### 3. Why should administrative services be restricted to authorized sources?
To prevent unauthorized access, remote exploitation, and brute-force attacks on management protocols like SSH (Port 22) or RDP (Port 3389).

### 4. Which computers should be repaired, upgraded, reused, or replaced?
* **Repaired/Upgraded:** Desktops with minor component failures (e.g., dead RAM, failing HDD) where adding an SSD or RAM restores optimal performance.
* **Reused:** Functional desktops that cannot run heavy OS versions; these are converted to Linux coding nodes.
* **Replaced:** Desktops with irrecoverable motherboard/CPU damage or where repair costs exceed 50% of new unit costs.

### 5. How can the school reduce electronic waste without compromising cybersecurity?
By executing **NIST 800-88 / DoD compliant multi-pass data wiping** on storage drives prior to hardware repurposing, component recycling, or donor transfer.

### 6. What information should be documented after implementing the proposed changes?
Asset inventory registries, hardware health logs, network topology diagrams, active firewall rule matrices, patch update logs, and official e-waste disposal certificates.
