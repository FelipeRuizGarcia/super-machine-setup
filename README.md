# Super Machine Setup

### Stages

`./update_all.sh`:
Fedora, you can skip an stage with `Ctrl + C`

You can stop the full script moving the job to background with `Ctrl + Z` and then kill with `kill %NUMBER_OF_THE_JOB`
You can use the alias `jkk` to kill the job suspended in the background by `Ctrl + Z`.

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

Fedora and Mac Setup with
Profiles, DevUtils, DevTools, Shortcuts, Alias and Configurations
for a day of SUPER PRODUCTIVITY.

The project is under development:
At this stage all the commands assume that
the path is from to the project root

Example

```
# recommended
$ ./vim/install_vimrc.sh

# does not work
$ cd ./vim/
./install_vimrc.sh

```

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

5. Why not use `pkgsrc` ? Well, we care about the configs and profiles.

6. No payments for software: Mandatory "Free use"
   even if there is some paid license.

## Features

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

Our rodmap is hosted in the Github project.

We use Github Projects, Discussions,
Issues and PR for the development.

Feel free to file your question.

WIP features:

-   You can manage your current setup with json file
-   Brew allows "build from source"
-   and "head" upstream, usually via github
-   We use brew as our main.
-   Migrate from coc.nvim

---

Fedora Considerations

-   Considerate save your custom Fedora Repos /etc/yum.repos.d/ or similar with DNF

### Story

super-machine-setup started as personal "MyDotFiles"
For Debian, Fedora and Mac setup.

Use for general Software Develpoment and
AWS cloud operations and agnostic dev tools.

Since more people are using this setup
the development of the project will be
transition from individual projecto to
comunitty driven project.

---

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
