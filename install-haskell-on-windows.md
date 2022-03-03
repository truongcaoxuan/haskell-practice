**=== INSTALL HASKELL ON WINDOWS ===**

#1: Open Powershell with Administrator on Windows by [Windows+X] and chose "Windows Powershell (Admin)"

#2: Install Chocolatey

2.1 Set-ExecutionPolicy
```
Set-ExecutionPolicy Bypass -Scope Process
```
*Type A or Y then Enter*

2.2 Install Chocolatey
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

#3: Install Haskell Platform
```
choco install -y haskell-dev
```
#4: Run ghci
```
refreshenv
```
#5 Reopen "Windows Powershell (Admin)"
```
ghci
```
