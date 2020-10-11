## How can I integrate HWIDGEN into my Windows ISO image (pre-activating Windows)

There are multiple ways to archive this. Windows own script folder is (by default) located under: `Sources\$OEM$\$$\Setup\Scripts` which parses any script you put in there.

### Batch file method (easiest way)

Create a batch file with the following content and save the file as e.g. `setupcomplete.cmd`.

```sh
@echo off
pushd "%~dp0"
hwidgen.mk6 silent
exit
```

### Preparing your Windows Image

* Extract your Windows ISO.
* Go into the following folder `Sources\$OEM$\$$\Setup\Scripts`.
* Place the`hwidgen.mk6.exe` & the script `setupcomplete.cmd` into the scripts folder.
* Burn or put your Windows folder onto an USB flash drive (you might want/need e.g. [Rufus](https://rufus.ie/) to create a bootable USB flash drives).
* That's it, Windows will be automatically activated in the background.


