sudo apt install python-pip
pip install virtualenv
pip install virtualenvwrapper 
export WORKON_HOME=~/.virtualenv
mkdir -p $WORKON_HOME
source ~/.local/bin/virtualenvwrapper.sh 
mkvirtualenv --python=`which python3` tifl