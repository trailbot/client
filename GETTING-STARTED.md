__Trailbot Getting Started guide__
+ [Introduction](#introduction)
+ [Installing Trailbot Client](#installing-trailbot-client)
+ [Installing Trailbot Watcher](#installing-trailbot-watcher)
+ [Installing Trailbot Vault](#installing-trailbot-vault)
+ [Usage](#usage)
  + [Watching files and logs](#watching-files-and-logs)
  + [Understanding events](#understanding-events)
  + [Adding smart policies](#adding-smart-policies)
--

## Introduction

The installation process of Trailbot comprises, in this order:
+ Installing [Trailbot Client](https://github.com/trailbot/client) in your computer.
+ Installing [Trailbot Watcher](https://github.com/trailbot/watcher) in your servers.

The installation of Trailbot Client __MUST__ be done before starting to install any Trailbot watcher.

Then, when you run Trailbot Client for the first time, it guides you through the process of installing and setting up Trailbot watcher.

Installing your own [Trailbot Vault](https://github.com/trailbot/vault) in another server is optional—you can use the "official" vault instance run by [Stampery](https://stampery.com), which is available at `vault.trailbot.io:8443`.

## Installing Trailbot Client

### Compatibility
You can install Trailbot Client on GNU/Linux, OS X, Windows and virtually any other desktop OS with support for `nodejs` > 5.0 and [Electron](https://github.com/electron/electron).

### Before installing

+ Make sure that version `5.0.0` or greater of `nodejs` is installed in your computer. Recommended version is `6.0.0` or greater. You can find detailed `nodejs` installation instructions for your OS [here](https://nodejs.org/en/download/package-manager).

### Installation
Installing Trailbot Client is incredibly easy. You only have to execute this single command: :v:
```
npm install -g trailbot-client
```
<sub>:cop: __Hey!__ _You will probably need to run the previous command as `root` on GNU/Linux and OS X._</sub>

__Boom!__ It's been easy, huh?.

### Running

You can run Trailbot Client by executing the following command:
```
trailbot-client
```

### Setting up

The first time you run Trailbot Client, it presents a setup wizard that guides you through the process of setting up both the client and your first Trailbot Watcher.

## Installing Trailbot Watcher

:exclamation: __Before installing Trailbot Watcher in your server, you need to install Trailbot Client in your own computer.__

## Compatibility

The watcher has been designed and optimized for usage in `GNU/Linux`. It should work flawlessly in Ubuntu, Debian, CentOS, Fedora, Gentoo, openSUSE, Red Hat and many other popular distributions as long as they have:

+ A proper package manager (`apt`, `yum`, `pacman`).
+ Support for `nodejs` > 6.0.0
+ `systemd` or `upstart`

### Before installing

+ Remember to install Trailbot Client in your own computer and go through its setup wizard to generate its keypar and export it.
+ Make sure that version `5.0.0` or greater of `nodejs` is installed in your computer. Recommended version is `6.0.0` or greater. Easiest way to install `nodejs` is:
```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs || sudo yum install nodejs npm || sudo pacman -S nodejs npm
```

### Installation

Installing Trailbot Watcher is quite easy:
```
sudo su
git clone https://github.com/trailbot/watcher
cd watcher
npm install -g
npm run setup
```

The setup wizard is pretty self-explainative and helps you to import your `Client public key`, export your `Watcher public key`, create a system daemon and start it immediately.

Last step is going back to the Client's setup wizard, importing the `Watcher public key` and now you are ready to play. :fist:

## Installing Trailbot Vault

Installing your own [Trailbot Vault](https://github.com/trailbot/vault) in another server is optional—you can use the "official" vault instance run by [Stampery](https://stampery.com), which is available at `vault.trailbot.io:8443`.

Its installation process is covered in [its own README](https://github.com/trailbot/vault/blob/master/README.md).

