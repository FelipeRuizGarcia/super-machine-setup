#!/usr/bin/python

import os
import threading

# software to install for apt-get system
SOFT_APT = [
    'vim',
    'tmux',
    'irssi',
    'mutt'
]

SOFT_EXT = [
    ('firefox.tar.bz2', '"https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=es-MX"')
]

CONFIG_ALIAS = './alias/install_alias_all.sh'
CONFIG_TMUX = './tmux/install_tmux_plugin_manager.sh'

def install_software_apt():
    """This functions install through apt-get manager
        software define in the list SOFT_APT"""

    os.system('apt-get update')
    os.system('apt-get install -y ' + str(SOFT_APT))


def install_software_external():
    """This functions retrieve external software
        define in the SOFT_EXT list of tuples"""

    for name, url in SOFT_EXT:
        os.system('wget ' + url + ' -O ' + name)
        os.system('tar xvf ' + name )
        os.system(' ln -s ')
def install_configs():
    """This functions install the configurations for
        alias, tmux, vim, irssi, mutt, firefox, shortcuts"""

    os.system(CONFIG_ALIAS)
    os.system(CONFIG_TMUX)


if __name__ == '__main__':
    print 'starting installation'

    t1 = threading.Thread(target=install_software_apt, name='t1')
    t2 = threading.Thread(target=install_software_external, name='t2')
    t3 = threading.Thread(target=install_configs, name='t3')

    t1.start()
    t2.start()
    t3.start()

    t1.wait()
    t2.wait()
    t3.wait()

