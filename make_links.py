#!/usr/bin/env python

from __future__ import print_function, unicode_literals

import os
import subprocess
from itertools import ifilterfalse
from operator import contains
from functools import partial

EXCLUDE_FILES = [
    'make_links.py',  # __file__ doesn't work for any reason
    '.git',
    '.gitignore',
    'README',
    'vimprojects',
]


def get_ln_paths(exclude):
    for filename in ifilterfalse(partial(contains, exclude), os.listdir('.')):
        target = os.path.abspath(filename)
        link_name = os.path.expanduser('~/.{}'.format(filename))
        yield target, link_name
    # "special" path, therefore it must be yielded seperately
    yield 'i3' os.path.expanduser('~/.config/i3/config')


def main():
    for target, link_name in get_ln_paths(EXCLUDE_FILES):
        print('ln -s {} {}'.format(target, link_name))
        subprocess.call(['ln', '-s', target, link_name])

if __name__ == '__main__':
    main()