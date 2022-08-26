Physio_Ca - JupyterHub version
##############################

This repository represents a possibility to deploy the CTN-utilities as a JupyterHub service via docker.
The original repository can be found `here <https://github.com/szarma/Physio_Ca>`_.

Traefik is used as a reverse proxy, allowing addition of other services on the server.
The computation

Installation
============

Installation of the JupyterHub version is easy to use and can be modified to your own needs.

To deploy the system run the following command:

.. code-block:: sh
   
   docker-compose build .

To start the jupyterhub run the following:

.. code-block:: sh
   
   docker-compose up jupyterhub
   

