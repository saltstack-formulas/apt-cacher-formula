apt-cacher
==========

Formulas to install the apt-cacher package or to configure clients to
use a apt-cacher proxy.
It also supports apt-cacher-ng, the successor of apt-cacher:
https://www.unix-ag.uni-kl.de/~bloch/acng

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.
    

Requirements
------------
apt-cacher requires apache formula (apt-cacher-ng does not, as it runs in standalone mode)
`apache-formula <https://github.com/saltstack-formulas/apache-formula>`_

Available states
================

.. contents::
    :local:

``apt-cacher.server``
--------------------

Installs the apt-cacher package
  
``apt-cacher.client``
---------------------

Sets up the system to use the apt-cacher server as the caching proxy

``apt-cacher.ng.server``
-------

Install and configure apt-cacher-ng

``apt-cacher.ng.client``
------------

Sets up the system to use the apt-cacher-ng server as the caching proxy
