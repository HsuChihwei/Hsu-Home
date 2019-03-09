#/bin/bash
# 安装 scl
sudo yum install epel-release centos-release-scl 
# 安装 Python 3.6
sudo yum install rh-python36
# 使用 Python 3.6 创建并安装项目环境
scl enable rh-python36 - << \EOF
npm install -g less
pip3 install --upgrade pip
pip3 install --user pipenv
path="\$PATH:`python -m site --user-base`/bin"
echo "export PATH=$path"  >> ~/.bashrc
source ~/.bashrc
pipenv install
EOF
# 安装完后重连终端，激活环境
