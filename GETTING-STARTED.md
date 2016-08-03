Trailbot getting started guide
+ [Introduction](#introduction)
+ [Installing Trailbot Client](#installing-trailbot-client)
+ [Installing Trailbot Watcher](#installing-trailbot-watcher)
+ [Installing Trailbot Vault](#installing-trailbot-vault)
  
--

## Introduction

The installation process of Trailbot comprises:
* Installing [Trailbot Client](https://github.com/trailbot/client) in your computer.
* Installing [Trailbot Watcher](https://github.com/trailbot/watcher) in your servers.

The installation of Trailbot Client MUST be done before starting to install any Trailbot watcher.

Then, when you run Trailbot Client for the first time, it will guide you through the process of installing and setting up Trailbot watcher.

Installing [Trailbot Vault](https://github.com/trailbot/vault) in another server is optional: you can use the "official" vault instance run by [https://stampery.com](Stampery), which is available at `vault.trailbot.io:8443`.

## Installing Trailbot Client

### Compatibility
You can install Trailbot Client on GNU/Linux, OS X, Windows and virtually any other desktop OS with support for `nodejs` > 5.0 and [Electron](https://github.com/electron/electron).

### Before installing
Please make sure that version `5.0.0` or greater of `nodejs` is installed in your computer. Recommended version is `6.0.0` or greater. You can find deatiled installation instructions for your OS [here](https://nodejs.org/en/download/package-manager).

### Installation
Installing Trailbot Client is incredibly easy. You have to execute this single command and it will be ready to run:
```
npm install -g trailbot-client
```
Tip: _you will probably need to run the previous command as `root` on GNU/Linux and OS X._

### Running

You can run Trailbot Client by executing the following command:
```
trailbot-client
```

### Setting up

The first time you run Trailbot Client, it will present a configuration wizard that will guide you through the process of setting up both the client and your first Trailbot Watcher.

