# sagwassi
Extensible OS X provisioning with Ansible.

## Usage ##

Download sagwassi.sh from GitHub to prepare OS X for provisioning with Ansible. The script can be customized with these parameters:

1.  GitHub Username        (default="lomin")
2.  Github Repository      (default="sagwassi")
3.  Ansible Inventory File (default="hosts")
4.  Ansible Main YML File  (default="site.yml")

In this way, there is no need to depend on the sagwassi repository if you have your own repository for OS X provisioning with Ansible.

### Example ###
```bash
curl "https://raw.githubusercontent.com/lomin/sagwassi/master/sagwassi.sh" -o sagwassi.sh
chmod u+x sagwassi.sh
./sagwassi.sh lomin sagwassi
```

# About

Sagwassi (사과씨) means apple seed in Korean.

# Thanks
* https://github.com/sandstorm
* https://github.com/eightbitraptor
