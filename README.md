[<img style="width:100%;" src="https://raw.githubusercontent.com/trailbot/vault/master/dist/img/banner.jpg">](https://trailbot.io)

# [Trailbot](https://trailbot.io) Client <sup><sub><sup><sub>DEVELOPER PREVIEW</sub></sup></sub></sup>

TrailBot tracks changes in your servers' files and logs and triggers smart policies.

[Smart Policies](https://github.com/trailbot/client/wiki/Smart-Policies) are simple scripts that receive notifications every time a watched file changes. They trigger actions such as emailing someone, rolling files back or even shutting the system down.

TrailBot has three components:
+ [__Watcher__](https://github.com/trailbot/watcher): a server daemon that monitors your files and logs, registers file events and enforces [smart policies](https://github.com/trailbot/client/wiki/Smart-Policies).
+ [__Client__](https://github.com/trailbot/client): (this repository) desktop app for managing watchers, defining policies and reading file events.
+ [__Vault__](https://github.com/trailbot/vault): a backend that works as a relay for the watcher's settings and the server events.

# Why Trailbot?


# Installation

Please refer to our [Getting Started guide](https://github.com/trailbot/client/blob/master/GETTING-STARTED.md) for detailed installation instructions.

# Get Involved

We'd love for you to help us build Trailbot. If you'd like to be a contributor, check out our [Contributing guide](https://github.com/trailbot/client/blob/master/CONTRIBUTING.md).

# FAQ

Check out our [FAQ at the wiki](https://github.com/trailbot/client/wiki/FAQ).

### How will Trailbot be licensed?

The Trailbot watcher, client and vault are available under the [MIT License](https://github.com/trailbot/client/blob/master/LICENSE).
