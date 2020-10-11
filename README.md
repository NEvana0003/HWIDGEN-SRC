# HWIDGEN Souce Code

This project provides the source code of the popular HWIDGEN Windows activation "tool" which basically is only an AutoHotKey script compiled into an .exe binary. 

 s1ave77 [left MDL on his own terms](https://forums.mydigitallife.net/threads/kms38.80015/#post-1538193), he takes a break.

## Discussion
A public discussion around the source code can be found [here](https://old.reddit.com/r/Piracy/comments/d654al/contribution_hwidgen_source_code/). 

The official developer provides support for his tool at [Nsane forums](https://www.nsaneforums.com/topic/312871-windows-10-digital-license-hwid-generation-without-kms-or-predecessor-installupgrade) (hidden/removed) and [AiOwares forums](https://www.aiowares.com/showthread.php?tid=246) (read-only/hidden) or via Discord. 

A public hwidgen mirror to the latest version can be found over [here](https://old.reddit.com/r/sjain_guides/comments/9qyuij/hwidkms38genmk6_download_and_usage_guide/), an unofficial support thread is avbl. over [here](https://www.reddit.com/r/Piracy/comments/d654al/contribution_hwidgen_source_code). 


## Contributing
* Please don't abuse GitHub's issue ticket system for any basic questions, otherwise I'm going to close it! For common questions check Reddit, Nsane, AiOwares or Discord.
* Constructive, non "low-effort" feedback is (_of course_) always welcome.


## Credits
* The main credit goes to the original author Mspaintmsi and Anonymous, for HWID and KMS38.
* HWIDGEN GUI itself came from slave (a.k.a. s1ave77). 
* All contributors for this project which helped to reveal the source code or to provide some useful background information, pull requests. 
* The people (_including me_) which originally worked on the first 'KMS solution'. KMS Pico was **not the original project**, but got very popular because it got published on a bigger russian website.
* Avxgov which contributed (a lot) to the original HWIDGEN project.
* The community around hwidgen, which helped a lot to improve it (bug reports, feedback - you name it!).
* TheMCHK for his [reddit post](https://www.reddit.com/r/Piracy/comments/d654al/contribution_hwidgen_source_code).


## License
This project has no real license ([unlicensed](https://github.com/CHEF-KOCH/HWIDGEN-SRC/blob/master/LICENSE)) since I'm not the original developer of "HWIDGEN". 

The HWIDGEN-SRC project only provides the information and the files to show how the script actually works and how Microsoft license verification is been _bypassed_.


## Project Goal
* Opening and realasing the full source code of HWIDGEN.
* Provide an archive/changelog.
* Provide a full documentation on how HWIDGEN works.
* Provide compiler & decompiler instructions.
* List & show external dependencies which are required by HWIDGEN.


## Dependencies

HWIDGEN requires several dependencies to run:

* Windows 10
* gatherosstate (_can be extracted from the Windows 10 Image_)
* slc
* [AutoHotKey](https://www.autohotkey.com) (AHK)

## Why should HWIDGEN be open source'd?
* **Preventing fakes (malware repacks)**, one popular example is dazloader. It got thousend times repacked, and people even created "fan" websites. Some people even "frankenstein'ed" Windows Builds and sold them via eBay just to make some quick cash.
* **Hosting such tools on e.g. GDrive is against their ToS** - The reason why the packages are always been password protected (with very weak passwords). However, the content provider still could get the program name and index it, not based on a hash, but because the name itself.
* **Verification** - You don't need to upload the files and fear they getting removed, if everyone just could go ahead and compile them. This would also prevent fakes because everyone could verify the binaries.
* **Fixes** - Some people might want to re-write parts or the entire tool to improve several things.


## Why isn't the original HWIDGEN tool open source'd?

**Notice:** - The strange part is that slave releases his source for his other ~~tools~~ scripts on [GitLab](https://gitlab.com/s1ave77). - 

There are multiple reasons, the original author slave has another opinion on open sourcing programs than I have. He believes keeping the source closed will prevent people from stealing his work or that MS closes the hole. 

Keep in mind that I do not stole his work here, I just provide the code because he refused it (many times) to open it and he got several times asked (e.g. on Reddit, Nsane,..), yet he (still) refuses to do that, so let's decompile it and show the world how his script works. 


### Personal comment
I believe publishing the source code is overall a good thing for everyone because it levels the playing field. White hats, "cracker" or other people want to know about the current Windows activation holes and I don''t think that ["security through obscurity"](https://en.wikipedia.org/wiki/Security_through_obscurity) is the way to go. 

Most people simply want to learn from Microsoft Windows exploits & holes. It also helps to find new strategies and other holes in case Microsoft decides to modify/patch something.

Several attempts have been made to open source (fork) hwidgen, e.g. [DigitalLicense](https://github.com/ARAlex143/activator) script.


## Isn't it dangerous to open source it, now Microsoft can learn from it and close the hole!
* Microsoft certainly has some anti-piracy measures in place e.g. Windows Home Server never got cracked (there is only a trial reset), so if Microsoft really wants to shutdown something or prevent someone from activating the OS they "could" - no matter if the activation program is closed or open sourced!
* Microsoft makes (similar like Intel) most money with Server Hardware/OS, not the desktop consumer market, that does not mean they don't care about "the little ones" but the priorities are just different. 
* Microsoft is already well aware of all activation "tricks", most source is already on GitHub, GitLab & Co. Some (old) holes like KMS simply can't be easily shutdown without _hurting the OEM customers_.

