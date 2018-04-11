# [Ubuntu] Some script setting up a new working enviroment:
- New a virtual enviroment named "py3tifl"
- Software: Git, Hipchat, Yakuake, Sublime text

## Tools/application should be installed by order in Makefile:
Open install_*.sh files and comment what you do not need

```
prepare:
	sh install_dependencies.sh

software:	
	sh install_software.sh

virtualenv:
	sh install_virtualenv.sh

opencv:
	sh install_opencv.sh

```

