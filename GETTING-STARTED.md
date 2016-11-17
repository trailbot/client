__Trailbot Getting Started guide__
+ [Introduction](#introduction)
+ [Installing Trailbot Client](#installing-trailbot-client)
+ [Installing Trailbot Watcher](#installing-trailbot-watcher)
+ [Usage](#usage)
  + [Watching files and logs](#watching-files-and-logs)
  + [Reading events](#reading-events)
  + [Adding smart policies](#adding-smart-policies)
+ [Usage in development mode](#usage-in-development-mode)
+ [Installing Trailbot Vault](#installing-trailbot-vault)

--

## Introduction

The installation process of Trailbot comprises, in this order:
+ Installing [Trailbot Client](https://github.com/trailbot/client) in your computer.
+ Installing [Trailbot Watcher](https://github.com/trailbot/watcher) in your server/s.

The installation of Trailbot Client __MUST__ be done before starting to install any Trailbot watcher.

Then, when you run Trailbot Client for the first time, it will guide you through the process of installing and setting up Trailbot watcher on your server/s.

Installing your own [Trailbot Vault](https://github.com/trailbot/vault) in a separate server is optional—you can use the "official" vault instance run by [Stampery](https://stampery.com), which is available at `vault.trailbot.io:8443`.

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

The first time you run Trailbot Client, it presents a setup wizard that guides you through the process of setting up both the client and your first Trailbot watcher.

![Welcome screen](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/001.png)

Trailbot uses __end-to-end encryption__ to guarantee maximum privacy of all your data, so the first step will be setting a passphrase for your secure keypar.

![PGP keypar generation](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/002.png)

The `Client public key` that you have just generated needs to be copied into your servers. In order to do so, the recommended option is to __export to filesystem__.

![Public key export](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/003.png)

At this point, if this is the first time that you use Trailbot, please choose __"Not yet, please show me how"__.

![Watcher configuration](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/004.png)

Now follow the steps described in the watcher or simply go through the [Installing Trailbot Watcher](#installing-trailbot-watcher) section in this same Getting Started guide.

![Watcher setup](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/005.png)

## Installing Trailbot Watcher

:exclamation: __Before installing Trailbot Watcher in your server, you need to install Trailbot Client in your own computer.__

## Compatibility

The watcher has been designed and optimized for usage in `GNU/Linux`. It should work flawlessly in Ubuntu, Debian, CentOS, Fedora, Gentoo, openSUSE, Red Hat and many other popular distributions as long as they have:

+ A proper package manager (`apt`, `yum`, `pacman`).
+ Support for `nodejs` > 6.0.0
+ `systemd`, `upstart` or `systemv`

### Before installing

+ Remember to install Trailbot Client in your own computer and go through its setup wizard to generate its keypar and export it.
+ Make sure that version `5.0.0` or greater of `nodejs` is installed in your computer. Recommended version is `6.0.0` or greater. Easiest way to install `nodejs` is:

##### Debian and Ubuntu based Linux distributions
```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
```
##### RHEL, CentOS and Fedora
```
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
sudo yum -y install nodejs
```
#### Arch
```
pacman -S nodejs npm
```

### Installation

Installing Trailbot Watcher is quite easy:
```
sudo su
git clone https://github.com/trailbot/watcher
cd watcher
npm install
```
Now take the `Client public key` that you exported from the Client in your computer and copy it into your server using `scp`, `rsync`, `ftp` or similar. (Another option is opening a text editor in your server and directly pasting it).

Now simply run:
```
npm run setup
```

The setup wizard is pretty self-explainative and helps you to import your `Client public key`, export your `Watcher public key`, create a system daemon and start it immediately:

Choose a name or press Enter for accepting the suggested name.

![Watcher name](https://github.com/trailbot/vault/blob/master/dist/img/screens/watcher/001.png)

Write the route of the file where you put the `Client public key`.

![Client key import](https://github.com/trailbot/vault/blob/master/dist/img/screens/watcher/002.png)

Here you can press Enter to use the "official" vault (`vault.trailbot.io:8443`).

![Vault endpoint](https://github.com/trailbot/vault/blob/master/dist/img/screens/watcher/003.png)

Wait a couple of minutes while your Watcher keys are generated.

![Keys generation](https://github.com/trailbot/vault/blob/master/dist/img/screens/watcher/004.png)

The watcher will generate a biometric sentence consisting of 8 words that will be required by Trailbot Client.

![Watcher exchange](https://github.com/trailbot/vault/blob/master/dist/img/screens/watcher/006.png)

After Trailbot Client validates the sentence, Trailbot Watcher should be up and running. :tada:

![Ready](https://github.com/trailbot/vault/blob/master/dist/img/screens/watcher/007.png)

Last step is taking the `./trailbot_watcher.pub.asc` file containing the `Watcher public key` and copying it back to your personal computer. Go back to the Client's setup wizard, import the `Watcher public key` and now you are ready to play. :muscle:

![Congratulations](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/006.png)

## Usage

##### Main view

![Main view](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/main-view.png)

### Watching files and logs

Start watching a file by clicking on the (:heavy_plus_sign:) button in the left pane and then simply enter the absolute path of the file you want to watch.

![Start watching](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/start-watching.png)

We recommend to watch :eyes: typical logfiles like `/var/log/syslog`, `/var/log/auth.log` or `/var/log/nginx/nginx_error.log`.

:ghost: _You can even monitor files that do not exist yet, and get events when they are created._

### Reading events

Every time a watched file is modified, a new event appears in the file's event list.

![Event](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/addition-event.png)

The numbers under the date tell you how many lines where added and/or deleted at the time.

Something like _"+3 -3"_ typically means that 3 lines were edited or replaced.

When you click on one of the events on the list, you can see the [diff](https://en.wikipedia.org/wiki/Diff_utility) between previous and current version of the watched file.

![Diff](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/addition-diff.png)

The _"EOF"_ at the bottom represents the end of the file.

### Adding Smart Policies

![Add smart policy](https://github.com/trailbot/vault/blob/master/dist/img/screens/client/smart-policies-menu.png)

1. Select the file you want to add a Smart Policy to.
2. Click on the (:heavy_plus_sign:) in the second left pane, right next to the "Smart Policies" header.
3. Copy the Git HTTPS URL for the Smart Policy you want to add, and paste it where asked.
4. Fill in all the policy's parameterization fields and simply click on "Add policy [...]". Voilà!


## Installing Trailbot Vault

Installing your own [Trailbot Vault](https://github.com/trailbot/vault) in a separate server is __OPTIONAL__—you can use the "official" vault instance run by [Stampery](https://stampery.com), which is available at `vault.trailbot.io:8443`. The installation process is covered in [its own README](https://github.com/trailbot/vault/blob/master/README.md#installing-your-own-vault).
