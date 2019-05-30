@echo off

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install -y wireshark filezilla putty nmap masscan x64dbg.portable whois

::安全 WEB 工具
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple sqlmap 

:: 一些未开源的软件暂时无法下载，比如：
::  Nessus, Vmware12+, burpsuit...