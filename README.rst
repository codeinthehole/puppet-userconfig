======================
Bash module for puppet
======================

This defines a ``.bashrc`` and ``.inputrc`` that set a decent prompt and
configure the history settings for easy command retrieval.

Install
-------

Install into your puppet modules path using::

    git clone git://github.com/codeinthehole/puppet-bash.git bash

then add::

    include bash

to the appropriate node manifest file.