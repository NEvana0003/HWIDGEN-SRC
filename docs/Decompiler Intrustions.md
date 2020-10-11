## Decompile HWIDGEN

There are [several](https://www.autohotkey.com/boards/viewtopic.php?t=59008) tools, scripts and resources avlb. on how-to decompile AHK/EXE programs.

## Decompiler for AHK scripts are 
* ShatterIt
* IronAHK
* [Autohotkey decompiler](https://www.reddit.com/r/AutoHotkey/comments/b78ly3/autohotkey_decompiler_autohot_decomp_v101_source/)
* Opening the .exe via Notepad++/Visual Core (if it is not obfuscated) and check the end of the file, which should be _more or less_ in plain text.
* [exe2ahk](https://autohotkey.com/boards/viewtopic.php?f=6&t=59015) - Drag & drop hwidgen.exe ahk-file to convert it to the real .ahk script.
* There are plenty other "ideas" and instructions avbl. on [YouTube](https://www.youtube.com/watch?v=jEBSoctGazY).


### .EXE to .AHK

In earlier "dumpster Inc." (hwidgen) versions you could simply use, [exe2ahk.exe (direct download link)](http://www.autohotkey.com/download/Exe2Ahk.exe) in order to decompile it. It's a small command line utility to reveal the .AHK scripts out of an compiled .EXE. Simply rename `hwid.kms38.gen.mk6.exe` to `hwid.kms38.gen.mk6` and try it.


### Instruction which worksm on newer HWIDGEN versions too

The user Uberi, [provides](https://gist.github.com/Uberi/3334552) a real nice solution which works with AutoHotKey and AutoIT (AutoIT itself has a function to decompile executables btw). 

* Download the latest HWIDGEN, unpack it into a folder.
* Install AutoHotKey (or AutoIT) (if not already installed).
* [Compile the script mentioned over here](https://gist.github.com/Uberi/3334552)
* Ensure you download the mentioned payload (.dll files) aka `payload.dll` and `payload64.dll`. 
* Now that we have HWIDGEN, the decompiler (including the needed .dll files), place every file into the same folder.
* Since we have compiled the decompiler script, we can just double-click on it which will then store the output into the same folder.


### Obfuscation (encryption)

Slave is not stupid and I assume he will obfuscate his (next) source code with some [anti-decompiler tricks](https://autohotkey.com/boards/viewtopic.php?f=6&t=49887&p=222452&hilit=obfuscate#p222452) or/and [encrypt](https://autohotkey.com/boards/viewtopic.php?f=28&t=42494) new releases. 

I already can address this and say that anti-decompiler scripts and "encryption" tricks are [very ineffective](https://www.reddit.com/r/AutoHotkey/comments/b78ly3/autohotkey_decompiler_autohot_decomp_v101_source/) on AHK scripts. 


In case this ever happens, and slave still refuses to open the code, I'll not going to update this guide here to avoid making it easier for him to build "anti-decompiling" strategies and defenses. However in such a scenario I then could provide the tool(s) for decompilition itself without giving any instructions further instructions. 
