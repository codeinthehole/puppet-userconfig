=============================
User configuration for puppet
=============================

This module defines a ``.bashrc``, ``.inputrc`` and ``.vimrc`` that set a decent
prompt and configure the history settings for easy command retrieval.

Install
-------

Install into your puppet modules path using::

    git clone git://github.com/codeinthehole/puppet-userconfig.git userconfig

then add::

    include userconfig

to the appropriate node manifest file.