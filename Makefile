install:
	sh install_dependencies.sh
	sh install_virtualenv.sh
	sh install_software.sh
	sd install_opencv.sh
	sh install_pip_package.sh
	sudo apt-get install git-flow