@echo off

:: 一些小型编辑器，emacs 和 atom 安装有点慢
choco install -y vscode sublimeText3 notepadplusplus typora
:: choco install -y emacs atom

:: 大型 IDE
choco install -y PyCharm PHPStorm WebStorm AndroidStudio IntelliJIDEA visualstudio2019community



:: 各个版本的 python 环境，python2 有点慢
choco install -y python --version 2.7.11
choco install -y python --version 3.6.8
choco install -y python --version 3.7.3
choco install -y python --version 3.8.0
pip install virtualenvwrapper-win
SETX \M WORKON_HOME %USERPROFILE%\.virtualenvs

:: JAVA 的 jdk8 环境，也有点慢
choco install -y jdk8

:: 安装 nodejs 并且配置国内的安装方法 
choco install -y nodejs.install
npm install -g cnpm --registry=https://registry.npm.taobao.org

:: Windows C++ 开发, 使用进行 gcc 编译器
Choco install -y mingw

choco install -y git hyper cmder