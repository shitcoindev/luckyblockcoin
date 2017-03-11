Luckyblockcoin Core 0.14.0
=====================

Setup
---------------------
Luckyblockcoin Core is the original Luckyblockcoin client and it builds the backbone of the network. However, it downloads and stores the entire history of Luckyblockcoin transactions (which is currently several GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Luckyblockcoin Core, visit [bitcoincore.org](https://bitcoincore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run Luckyblockcoin on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/luckyblockcoin-qt` (GUI) or
- `bin/luckyblockcoind` (headless)

### Windows

Unpack the files into a directory, and then run luckyblockcoin-qt.exe.

### OS X

Drag Luckyblockcoin-Core to your applications folder, and then run Luckyblockcoin-Core.

### Need Help?

* See the documentation at the [Luckyblockcoin Wiki](https://en.luckyblockcoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#luckyblockcoin](http://webchat.freenode.net?channels=luckyblockcoin) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=luckyblockcoin).
* Ask for help on the [LuckyblockcoinTalk](https://luckyblockcointalk.org/) forums, in the [Technical Support board](https://luckyblockcointalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Luckyblockcoin on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Luckyblockcoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/luckyblockcoin/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [LuckyblockcoinTalk](https://luckyblockcointalk.org/) forums, in the [Development & Technical Discussion board](https://luckyblockcointalk.org/index.php?board=6.0).
* Discuss project-specific development on #luckyblockcoin-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=luckyblockcoin-core-dev).
* Discuss general Luckyblockcoin development on #luckyblockcoin-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=luckyblockcoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
