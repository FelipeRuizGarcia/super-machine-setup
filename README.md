# Super Machine Setup

Fedora, Mac & Windows Setup with
Profiles, DevUtils, DevTools, Shortcuts, Alias and Configurations
for a day of SUPER PRODUCTIVITY.

This repo is designed to work in conjuction with the super machine ecosystem.

`super-machine-templates` include all the templates and scripts for software development.

The project is under development:

with Fedora 40, Fedora 41 and Fedora RawHide systems and packages.
Support with Windows WSL and MacOs.

Use the stable setup in the `master` branch.

Use `next` branch for development.

#### PR's are welcome.

## Table of Contents

-   [Introduction](#introduction)
-   [Usage](#usage)
-   [Conclusion](#conclusion)

## Goals and Motivations

### Story

`super-machine-setup`
began as a personal project under "MyDotFiles,"
designed to support setups for Debian, Fedora, and Mac.

It provides tools and configurations
for my general software development and AWS cloud operations,
with a focus on OPEN SOURCE development tools.

The project emphasizes open-source development customizations and prefers
terminal-based (TUI) tools over graphical user interfaces (GUI).

Mainly tmux + vim.

I collaborated on multiple projects with various contributors.
During video conference sessions, and helping team-mates,
working where we shared screens and solved issues in real-time (oncall?)
people often asked about the commands and tools I used,
and whether I could help them configure their setups on personal machines,
docker containers or servers.
Then, I decided to formalize the process by developing and maintaining this repo.
`The super machine collection`, `templates`, and what else?, let see the motivations.

### Motivations

I like to open the terminal, open tmux and `get things/shit done`.
So, this setup priorizate that, things that allow that.

So, even I like Fedora, this setup is moving to an "OS agnostic"
setup to be able to work with MacOs and Winwdows with WSL
and Containers.

0. Productivity: FOCUS to Terminal Tmux with Nvim

1. Besides Machine Setup agnostic

2. Get the latest versions of the app / Get Upstream packages

3. More open source.

4. Support for LONG PROJECTS.

5. Why not use `pkgsrc` ? Well, we care about the configs and profiles.

6. No payments for software: Mandatory "Free use"
   even if there is some paid license.

7. This support Nvidia drivers.

## Installation

## Features

Once the repo is installed

### Update Stages

You can update the setup by stages:
OS
Packages and Tools
Nvim
Plugings and configs

You can use the `./update_all.sh`: script to update all the stages.

#### you can skip an stage with `Ctrl + C`

You can stop the full script moving the job to background with `Ctrl + Z` and then kill with `kill %NUMBER_OF_THE_JOB`

#### You can use the alias `jkk` to kill the job suspended in the background by `Ctrl + Z`.

Example:

```

 ~/repos/super-machine-setup │ $ ./update_all.sh
SMS UPDATE ALL
+ sudo dnf5 upgrade --refresh -y --no-allow-downgrade '
Updating and loading repositories:
 Fedora 39 - x86_64 - Updates
^Z
[1]  + 540689 suspended  ./update_all.sh

 ~/re/super-machine-setup $ jkk
[1]  + 540689 terminated  ./update_all.sh

```

-   Alias Expansions

    You can expand the aliases typing and hitting space
    on this way you can edit the command line.
    We recommend use `ctrl+x ctrl+e`

-   Alias Filter

See `alias/alias` for more infor about the aliases and environment variables.

Do not use wildcards.

The list of alias relies in environment variables
most of them called `$CHANGEME-<alias>` or simply `$CHANGEME`.

Example:

```
$ alias awalsa="aws iam create-account-alias --account-alias $CHANGEME"

```

The env vars use for the alias are splited in 2

-   Query: Temporal envs, used in alias for READ, do not change anything in the system / app.
    Query's are handled by $SMS, $SMS1, $SMS2 and so on.

Example

```

```

-   Commands:

Intended to track and know which value is use for a COMMAND.

To use an alias you can use this

Use to see the alias installed
You can search in the alias with

    $ af <x>
    allow us to filter alias that include x word

---

-   Alias Parameters

You can put env variables as alias commands,
which allows to just define the variable of the
desired command.

Example

```
    # Add an alias with the parameter SMS_VERSION
    $  alias hi
       hi='echo $SMS_VERSION'

    # Define the value for the parameter
    $  SMS_VERSION=HelloTeam_FOCUS!

    # The alias take the parameter.
    $  hi
       HelloTeam_FOCUS!

```

Another example with more parameters is

```

# see the sln `alias` also with st
 ~  alias sln
sln='ln -sf $SLN1 $SLN2'

# create a dir and create a file
 ~  mkdir tmp
 ~  cd tmp
 ~/tmp  touch 1

# see the file
 ~/tmp  la
total 0
-rw-r--r--. 1 adapa adapa 0 Jan 19 05:20 1

# define the variables for the symnlink creation
 ~/tmp  SLN1=1
 ~/tmp  SLN2=2
 ~/tmp  la
total 0
-rw-r--r--. 1 adapa adapa 0 Jan 19 05:20 1

# create the symlink with sln
 ~/tmp  sln
 ~/tmp  la
total 0
-rw-r--r--. 1 adapa adapa 0 Jan 19 05:20 1
lrwxrwxrwx. 1 adapa adapa 1 Jan 19 05:21 2 -> 1

# file 2 is "pointing" to file 1

```

video demo etc etc WIP

---

-   Tmux Session Template WIP

### How to save and restore your custom tmux sessions ( windows, panels, etc )

This features uses tmux-resurrect

https://github.com/tmux-plugins/tmux-continuum/blob/master/docs/faq.md

https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/restoring_previously_saved_environment.md

So, you can save your custom tmux-resurrect file in

```

    ~/.local/share/tmux/resurrect

```

The path is defined by the resurrect tmux plugin.
The path is defined with $XDG_DATA_DIRS .

you can learn more about custom path tmux resurrect configs at

https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/restoring_previously_saved_environment.md

https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/save_dir.md

### Roadmap

Branch | PROD | TEST
OS Primary | Fedora 40 | Fedora 41 / Beta distribution
OS MacOs | Fedora 40 | Fedora Raid
Terminal Console 1 | alacritty
Terminal Console 2 | kitty | wezterm
Terminal Editor 1 | Neovim | Neovim
Terminal Editor 2 | Vim | Helix
Shell | Zsh | Nushell
Prompt Shell | powerlevel10k | Starship
External packager Manager | Brew | Nix
Network Tool | NetHogs | Bandwhich from brew

---

configure dnf5 properly

    to use multiple threads to process
    to store the packages as 30gb

Our rodmap is hosted in the Github project.

We use Github Projects, Discussions,
Issues and PR for the development.

Feel free to file your question.

WIP features:

-   nix integration
-   brew packages list
-   node packages
-   tmux session
-   You can manage your current setup with json file
-   Brew allows "build from source"
-   and "head" upstream, usually via github
-   We use brew as our main.
-   Migrate from coc.nvim

---

Fedora Considerations

-   Considerate save your custom Fedora Repos /etc/yum.repos.d/ or similar with DNF

## How to use

WIP:
http://sms.click.sh | FelipeRuizGarcia/desk

---

## List of Features + Tools

### Machines Supported / Tested

### Monitoring

-   `htop` : for OS process.
-   `nethogs` : for Network bandwidth.
-   `nvidia-smi -l 2` : for GPU process.

### Markdown files with Glow

## Setup + Installation

### Requirements

This Setup assume usage on

OS:

-   Fedora 38 or higher
-   MacOs Sonoma ( Intel )

Nvidia Graphics Card

Firefox ( different versions )

This setup is start with

OS >

-   ALACRITTY + Config
    \*\* ZSH + Config + Plugins > TMUX + Plugins > P10K
    ZSH >

Package managers

#### Special Setup for Fedora

Snap

#### Special Setup for Mac

---

## Practical Guide How to Use

This relies in the terminal
tmux

### Miscellaneous

-   why not use `stow` instead ?
    Cuz we are using not built in sysmlinks

#### mesa workaround

```
mv .config/environment.d/gsk.conf  .config/environment.d/gsk.conf2

# test
mv .config/environment.d/gsk.conf2  .config/environment.d/gsk.conf
```

## Fedora Setup

#### Kernel

The kernel `kernel.x86_64 6.11.4-450.vanilla.fc41  vanilla`
works pretty well, it fixes some nvidia issues related to wayland.
Also, fixed the issue with the mesa issue.
Note: seems the sleep / awake process does not work correctly

Fedora Kernel from `copr  @kernel-vanilla/fedora   Package: stable-fedora-releases `

```
https://copr.fedorainfracloud.org/coprs/g/kernel-vanilla/fedora/package/stable-fedora-releases/
```

#### Nvidia

`| NVIDIA-SMI 560.35.03              Driver Version: 560.35.03      CUDA Version: 12.6`

the `nvidia-smi` command show the processes correctly.

#### Nvidia Trouble

We follow the approach of install the drivers from the rpmfusion packages.
See
https://rpmfusion.org/Howto/NVIDIA

This is my tuned setup to run with nvidia drivers.

~ nvidia-smi ✔ │ local us-east-1 AWS │ 0.40 L │ 01:08:05 PM │ ⇣0 B/s ⇡0 B/s IP
Failed to initialize NVML: Driver/library version mismatch
NVML library version: 560.31

---

We use Wayland.
Always active prime support option to avoid issues with sleep events.

We use the nvidia packages via dnf5 instead of download nvidia binary.
This with the intention of help the project of use and support
`https://github.com/gridhead/nvidia-auto-installer-for-fedora-linux.git `

Just enable the third party fedora repo

```/etc/X11/xorg.conf.d/nvidia.conf
#This file is provided by xorg-x11-drv-nvidia
#Do not edit

Section "OutputClass"
    Identifier "nvidia"
    MatchDriver "nvidia-drm"
    Driver "nvidia"
    Option "AllowEmptyInitialConfiguration"
    Option "SLI" "Auto"
    Option "BaseMosaic" "on"
EndSection

Section "ServerLayout"
    Identifier "layout"
    Option "AllowNVIDIAGPUScreens"
EndSection
```

I use `./utils/fedora/nvidia` script to reinstall to the proper arch(latest / stable) and release
I try to compile or install Recommended/Certified drivers, not beta.

---

At this stage( prod branch vs test branch ) all the commands assume that
the path is from to the project root:

Example

```
# recommended
$ ./vim/install_vimrc.sh

# does not work
$ cd ./vim/
./install_vimrc.sh

```
