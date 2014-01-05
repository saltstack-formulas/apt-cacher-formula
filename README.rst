apt-cacher-formula
==================

Install the apt-cacher. This allows you to install either the server or the
client version.

.. note::
    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/topics/conventions/formulas.html>`_.
    

Requirements
------------
apache-formula

Available states
----------------

``apt-cacher.server``
  Installs the server
  
``apt-cacher.client``
  Sets up the device to use the apt-cacher for apt-get packages
