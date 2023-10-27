# Super Machine Setup

Fedora and Mac Setup with
Profiles, DevUtils, DevTools, Shortcuts, Alias and Configurations
for a day of SUPER PRODUCTIVITY.

The project is under development.

Use the stable setup in the `master` branch.

Use `next` branch for development.

PR's are welcome.

## Goals and Motivations

0. Productivity: FOCUS to Terminal Tmux Nvim

1. Machine Setup agnostic

2. Get the latest versions of the app /
Get Upstream packages

3. More open source

4. Support for LONG PROJECTS.

999. No payments for software: Mandatory "Free use"
even if there is some paid license.

### Roadmap

Our rodmap is hosted in the Github project.

We use Github Projects, Discussions,
Issues and PR for the development.

Feel free to file your question.

---

Fedora Considerations

* Considerate save your custom Fedora Repos /etc/yum.repos.d/ or similar with DNF

### Story

super-machine-setup started as personal "MyDotFiles"
For Debian, Fedora and Mac setup.

Use for general Software Develpoment and
AWS cloud operations and agnostic dev tools.

Since more people are using this setup
the development of the project will be
transition from individual projecto to
comunitty driven project.

----

## How to use

WIP:
http://sms.click.sh | FelipeRuizGarcia/desk

---

## List of Features + Tools


### Machines Supported / Tested


### Monitoring
* `htop` : for OS process.
* `nethogs` : for Network bandwidth.
* `nvidia-smi -l 2` : for GPU process.

### Markdown files with Glow


## Setup + Installation

### Requirements

This Setup assume usage on

OS:
* Fedora 38 or higher
* MacOs Sonoma ( Intel )

Nvidia Graphics Card

Firefox ( different versions )


This setup is start with 

OS >
* ALACRITTY + Config
** ZSH + Config + Plugins
        > TMUX + Plugins > P10K
ZSH > 

Package managers

#### Special Setup for Fedora

Snap

#### Special Setup for Mac

----

## Practical Guide How to Use

This relies in the terminal

### How to use the Alias

See `alias/alias` for more infor about the aliases and environment variables.

Do not use wildcards.

The list of alias relies in environment variables
most of them called `$CHANGEME-<alias>` or simply `$CHANGEME`.

Example:
```
$ alias awalsa="aws iam create-account-alias --account-alias $CHANGEME"

```

The env vars use for the alias are splited in 2

* Query: Temporal envs, used in alias for READ, do not change anything in the system / app.
    Query's are handled by $SMS, $SMS1, $SMS2 and so on.

Example
```

```

* Commands:

Intended to track and know which value is use for a COMMAND.

To use an alias you can use this

Use to see the alias installed
You can search in the alias with

    $ af <x>
    allow us to filter alias that include x word
