# ResponsiveFileManager-CVE-2022-46604
Responsive FileManager v.9.9.5 vulnerable to CVE-2022-46604 (File Creation Extension Bypass which leads to RCE).

The current exploit is made in Python 3 and exploits the vulnerability to upload a webshell which allows the remote execution of commands in the vulnerable host.

## References
- Exploit Database (Exploit-DB): https://www.exploit-db.com/exploits/51251
- Packet Storm Security: https://packetstormsecurity.com/files/171720/Responsive-FileManager-9.9.5-Remote-Shell-Upload.html

### Demo

![CVE-2022-46604 exploit PoC](CVE-2022-46604-exploit-PoC.png "CVE-2022-46604 exploit PoC")
