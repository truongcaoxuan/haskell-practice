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
--------
 The install of msys2 was successful.
  Software installed to 'C:\tools\msys64'

haskell-dev v0.0.1 [Approved]
haskell-dev package files install completed. Performing other installation steps.
 The install of haskell-dev was successful.
  Software installed to 'C:\ProgramData\chocolatey\lib\haskell-dev'

Chocolatey installed 5/5 packages.
 See the log for details (C:\ProgramData\chocolatey\logs\chocolatey.log).
Installed:
 - ghc v9.2.1
 - chocolatey-core.extension v1.3.5.1
 - haskell-dev v0.0.1
 - msys2 v20220128.0.0
 - cabal v3.6.2.0
--------
#4: Run ghci
```
refreshenv
```
#5 Reopen "Windows Powershell (Admin)", enter Haskell shell
```
ghci
```
#6 Exit Haskell shell
```
:quit
```

