@echo off

:: 各个版本的 python 环境，python2 有点慢
choco install -y python --version 2.7.6 && COPY C:\Python27\python.exe C:\Python27\python2.7.exe
choco install -y python --version 3.6.8 && COPY C:\Python36\python.exe C:\Python36\python3.6.exe
choco install -y python --version 3.7.3 && COPY C:\Python37\python.exe C:\Python37\python3.7.exe
choco install -y python --version 3.8.0 && COPY C:\Python38\python.exe C:\Python38\python3.8.exe
:: 安装 virtualenvwrapper
pip install virtualenvwrapper-win
SETX \M WORKON_HOME %USERPROFILE%\.virtualenvs
:: 为各个版本的 python 安装 pip
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command "(new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/pypa/get-pip/master/get-pip.py','%TEMP%\get-pip.py')"
python2.7 %TEMP%\get-pip.py
python3.6 %TEMP%\get-pip.py
:: 将 python 的默认安装源设置为清华大学安装源
python2.7 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
python3.6 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
python3.7 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
python3.8 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

:: 安装 WEB 安全工具
mkvirtualenv -p C:\Python27\python.exe WebSec2.7
pip install sqlmap shodan
