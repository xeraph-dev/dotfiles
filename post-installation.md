# User



###### Add your user

```shell
useradd -m user_name
passwd user_name
```



###### Configure sudoers

```
vim /etc/sudoers

#---------------------------------#
# Configure vim as default editor #
#---------------------------------#
# Reset environment by default
Defaults	env_reset
# Set default EDITOR to vim, and do not allow visudo to use EDITOR/VISUAL
Defaults	editor=/usr/bin/vim, !env_editor

#----------------------------------#
# Allow wheel group access to sudo #
#----------------------------------#
%wheel	ALL=(ALL) ALL
```

For to save the file you need a force save with `wq!`



###### Add user to wheel group

```
gpasswd -a user_name wheel
```

Close session and login with your user



 
