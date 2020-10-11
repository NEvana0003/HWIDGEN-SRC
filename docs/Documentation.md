# HWIDGEN (unofficial) Documentation

## Overview

HWIDGEN was originally written by s1ave77, who is a member of several popular forums such as MDL, [NSane](https://www.nsaneforums.com/topic/312871-windows-10-digital-license-hwid-generation-without-kms-or-prede) or [AiOwares](http://aiowares.com/showthread.php?tid=246).

The tool (it's basically a AutoHotKey script) and was build for all Microsoft Windows 10 versions in order to activate the operating system without the need to use stolen product keys.


Basically: 

The activation process will only be performed once per each single machine, Windows 10 then gets activated/converted from a MSDN license (in case it was detected e.g. in case a product key was found - Retail/embedded BIOS) to a Digital License in order to activate the OS. 

The program works via slshim and Windows 10 own GatherOsState.exe (which you can extract from the ISO). The activation keys are used from the products.ini, these keys are generic ones and a legal to post/share – in other words these are the keys you can temporarily use during setup (usually). If you format your PC you need to re-run HWIDGEN, a in-place upgrade survives the activation. 


## Files
* `GATHEROSSTATE.EXE`: Taken from the official MS ISO.
* `GATHEROSSTATELTSB15.EXE` Also taken from official LTSB image.
* `hwid.kms38.gen.mk6.exe` the (latest) HWIDGEN version (closed source)
* `HWIDGEN-source.ahk`: Basically the heart of HWIDGEN tool, it provides the entire source code.
* `LIC.SWITCHER.EXE`: Basically the upper layer which checks the Windows version, installed key and allows you to manually switch the Windows license. Once the utility is manually started it will create (in the same dir as the executable is) a debug file called `LIC_SWITCH.log`.
* `PID8.VBS` is a Visual Basic script which checks the OS HWID status and matches the key with a pre-configured key list. 
* `PKCONFIG.TXT` Stores all official Windows versions (except some homebrew SKUs).
* [SLSHIM](https://github.com/vyvojar/slshim/releases) `SLSHIM32_AIO.DLL` is a modified version which works on x86 & x64 versions. The original project compiles the .dll based on the OS, slshim32.dll for x86 and slshim64.dll for x64 ISOs.
* `WARNH.EXE` & `WARNK.EXE` are basically the same, it outputs a "warning popup", which tells you that your Windows version is not genuine. The H version represents HWID and the K version is for KMS38 activation methods.

## Is the tool "hwidgen" a legal activation method?

It's a **gray-zone**. The tool itself is _against Microsoft Windows 10 ToS_, however the used methods are controversial and theoretically legal because they are not hacking, manipulating any official Windows files or altering official servers.


### Anti-Virus Scanner

HWIDGEN is often (not by all) anti-virus scanner(s) detected as malware. This is a false/positive, unless you downloaded the tool from an unknown/untrusted source.

Most (if not all) AV products/scanner-websites (e.g. VirusTotal) detecting "illegal" activation methods as malware. This is normal and you can simply exclude the utility within your AV scanner. 

To verify if the tool you downloaded is the original one, make sure you checked the checksums provided in the official forums/mirror threads.


## Why slshim is required?
slshim was created by it’s author as a replacement of MS software protection platform which allows to use Windows without too much problems, but with changed Product Policy using altered registry entries. Gatherosstate uses the slc.dll library to determine the current activation status and licensing channel from the Windows product policy.

Basically slshim is an emulation of slc.dll that is read by gatherosstate, we can change what it will return to it. Slshim passes a few changed policies, and gatherosstate thinks that Windows was activated because of it. That’s it, gatherosstate creates GenuineTicket without any further verification.


## Why 1803 gatherosstate.exe?
Gatherosstate in 1803/1903 (April Update) contains information about every single Windows Edition (SKU) that exists and due to this, it is able to create ticket on any edition. Older versions also work, but it can only create tickets on some specific editions.

So, overall the activation isn’t illegal it basically abuses an activation weakness (which is opened since several years in Windows) because Microsoft still allows you to ‘get Windows for free’. Changing the HWID does the rest in order to fool or bypass the integrated activation mechanism.

The program has two modes, one is an automatic mode which activates all MS Windows versions and the other method is the manual method which can be used in order to activate problematically SKU’s like S/N versions.

The program takes some time, so be patient. Another thing I can suggest is that you run it from a C:\ drive directly with administrative privileges (and use a folder/path without spaces). Once the tool is running it creates some kind of debug log near the executable.

## Why we can still activate Windows using GenuineTicket?
Windows 10 internally uses the same activation system for legitimate Retail and OEM activations so users do not need to enter their key when reinstalling system. Systems activated using these keys are first activated using key, then HWID license is created.


## Supported Windows systems
* All Windows 10 except manipulated SKUs (G/GN/GNM) - or in other words homebrew versions.

### Activation process

The activation method choosed by HWIDGEN varies depending on the edition of Windows 10 to be activated. 

The original developer [mentions which activation method is used under which SKU](https://www.aiowares.com/showthread.php?tid=246):

```
Core (Home) (N) (HWID/KMS38)
CoreSingleLanguage (N) (HWID/KMS38)
Professional (N) (HWID/KMS38)
Professional Education (N) (HWID/KMS38)
Professional Workstation (N) (HWID/KMS38)
Education (N) (HWID/KMS38)
Enterprise (N) (HWID/KMS38)
EnterpriseS  (N) 2015(HWID)
EnterpriseS (N) 2016 (HWID/KMS38)
EnterpriseS  (N) 2019 (KMS38)
Server Standard(Core) (N) (KMS38)
Server DatacenterCore) (N) (KMS38)
Server Solution(Core) (N) (KMS38)
```


## Support 'Modes'

HWIDGEN comes with an _debug window_ in order to show the user what's going on during the activation process, besides the visible stuff within that window, it also places a `HWID.log` into the same dir as the HWIDGEN tool is stored.

The tool offers several "Working Modes" in order to activate Windows 10.

* LicenseSwitch: Acts like an in-place-upgrade, e.g. on Windows N versions. A reboot is required! This mode is the most dangerous one because it can't be uninstalled without the need to re-install Windows.
* SetOffline & SetOnline: Sets the network adapter to online or offline.
* Rearm (trial reset): Resets the 180 days on a KMS activated OS, this method is only needed in case you have MS Office installed. A reboot is required.
* Clean: Only needed by KMS activated systems, it can break MS Office license verification! In this case use the "Rearm" solution, this basically trial resets the activation status. A reboot is required.
* Clean_ClipSBV: resets and cleans the current activation status (token). This is needed in case you want to use the same (pre) activated image across different systems.
* gVLK: Installs a generic volume (GLVK), this is needed for e.g. KMS38 and the normal KMS activation method.
* HWID_Key: Installs the default (generic) key, which is needed for all HWID Windows SKUs.
* KMS38: Basically all OS including LTSC (2019) & Server.
* HWID: All Windows != SKUs are supported, except LTSC (2019) and Server versions.
* INFO (**default**): Pressing "START" will open a big popup with a small explanation how every mode works. 

The "Manual method" (not recommend) isn't visible via GUI, it's a fallback. This is for advance users or people which work with a slipstream'ed Windows 10 version. It's documented over [here](https://www.aiowares.com/showthread.php?tid=246).


## Resetting the status
```bash
reg add "HKLM\SYSTEM\Tokens" /v "Channel" /t REG_SZ /d "Retail" /f
reg add "HKLM\SYSTEM\Tokens\Kernel" /v "Kernel-ProductInfo" /t REG_DWORD /d XXX /f
reg add "HKLM\SYSTEM\Tokens\Kernel" /v "Security-SPP-GenuineLocalStatus" /t REG_DWORD /d 1 /f
```

```bash
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\Tokens]
"Channel"="Retail"

[HKEY_LOCAL_MACHINE\SYSTEM\Tokens\Kernel]
"Kernel-ProductInfo"=dword:0000XXX

[HKEY_LOCAL_MACHINE\SYSTEM\Tokens\Kernel]
"Security-SPP-GenuineLocalStatus"=dword:00000001
```

## Already activated Windows 10 system

The program will also work - after manually selecting "Work Mode" - on already activated systems (e.g. MSToolKit). This is for users who like to _"upgrade"_ their activation method since HWIDGEN provides some benefits over other methods.


## Why does it HWIDGEN needs admin rights?

HWIDGEN requires higher rights because it might need to write/access e.g. your registry to install a default key (generic key), this can only be done if the program gets the necessary rights.


## Are the integrated keys in hwidgen illegal?

No, they are generic keys and only added into your registry in case you don't use the "default" key e.g. whenever you are on a machine with a Retail/embedded BIOS.


### Why is the original hwidgen package password protected?

This is a counter measurement to avoid that the tool gets inspected (opened) by an indexer to scan it's content. The reasons why this is done to ensure that the original download link not gets removed due to DMCA reasons.


## Difference between HWID and KMS(38)

Manually backing up the activation status is possible with all three KMS solutions, there are also tools available. The official way to backup your license status is if you sign-in into your Microsoft account and "submit" your activation status to Microsoft - Microsoft can't check if the status was "faked" after it got already validated, so don't worry.

#### KMS
KMS stands for Key Management System, basically how the system works is, that it is renewing a license every few months (default 180 days on Enterprise/Education systems).

* KMS was officially introduced with Windows XP.
* KMS is a legitimate Microsoft service heavily used in enterprise or education environments.
* "KMS piracy" is usually redirected to a fake KMS server which will always return a positive response. 
* You can create your own KMS server (the images are available) however running a server is against Windows TOS because it bypasses the original activation process which is only done by official Microsoft KMS server.


#### KMS(38)
KMS38 is for Windows 10 only machines, the activation is valid until 2038 however it has some fundamental differences to all KMS activators:

* KMS38 is a completely offline process (it uses a grace period).
* KMS38 does not require any license renewal or any interaction with Microsoft or third party servers. The firewall warning you see shows a local (fake) host to emulate the activation process. The "dummy KMS address" does not exists in the real world and exist to validate/assign a IP to the activation process.
* KMS38 main benefit is that it is offline and more private (not depending on unknown third-party KMS servers).
* KMS38 will cause Windows own Event Viewer to show several errors, mostly starting with `License Activation (slui.exe) failed...`, you can ignore those messages, they does not have any impact on your OS performance or stability.


#### HWID

HWID (Hardware ID) is a permanent digital license activation tied to your motherboard, which means if you change your motherboard or parts of your hardware the activation will be lost or you have to renew the license. HWID piracy or often only called "hwidgen" works by using parts of your system to generate a ticket which is then sent to Microsoft servers which return a key, which is then installed.

* Upgrading from Windows 7 or above (legitimately activated or pirated) will generate a ticket on your PC for free. This is often called "upgrade-trick".
* HWID activated machines, can survive a fresh installed windows or an upgrade (unless Microsoft changes something).
* In case you sign into your official Microsoft account on a hardware ID based activated Windows installation, you'll be able to keep / renew your license status even after you changed your motherboard because Microsoft stores your activation status the first time you log-in.


### Popup screen during start

The tool performs several system checks and may need a moment to appear (depending on your system specs). This is normal and you don't need to be worried, it checks your registry, your current activation status among other things.

### Error screens

`WARNK.EXE` & `WARNN.EXE` are responsible for the error screens and are only visible as feedback in case something went wrong. 


### Microsoft account sign-in

You do not need to have an Microsoft Accounts added in your Windows settings, nor do you not need to be signed into an online Microsoft account on your PC for the process to work. Assigning an account is totally optional and meant to backup your license status. 


### Integrating HWIDGEN into a Windows 10 Image

It's possible that you can "slipstream" the tool into an Windows Image. However, after you did this make sure you exclude hwidgen in Windows Defender otherwise it gets blocked. 

_Pre-cracked_ Windows 10 builds (Frankenstein builds) are often been sold by "dark pirates" - Microsoft does not sell any pre-activated images to customers on eBay or other platforms. In most cases such people want to make some quick cash.


### Firewall warning

You see a fake firewall warning, which points you to `wmiprvse.exe`, you can ignore it. The IP which HWIDGEN uses is just a dummy address.


## Can I uninstall HWIDGEN?

**Yes**, you can because the digital activation is not embedded in the Windows installation. The activation relies on your machine code and communication with the MS Servers, whenever Windows tries to connect/validate the status e.g. via MS Account. If you install your Windows Image to another machine it will not be digitally activated and you can (_of course_) use a legit Windows key.

