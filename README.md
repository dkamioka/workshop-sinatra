Backend Workshop
=============

Codigos auxiliares para o Workshop. 
Para quem quiser utilizar o ambiente para o workshop, seguem abaixo as instruções.


Vagrant for Ruby on Rails apps development
------------------------------------------

Preparing Virtual Machine Environment
-------
* Download VirtualBox: https://www.virtualbox.org/wiki/Downloads
* Download Vagrant: http://downloads.vagrantup.com/


Vagrant start
-------
After installing VirtualBox and Vagrant, and after set ip, go to directory where Vagrantfile is and run:

    vagrant up

It will take some minutes to download SO iso image and boot up. Then: 

    vagrant ssh

Vagrant sync the folder on your machine with folder inside vagrant, so you work on your favorite IDE or text editor and it will be automatically synced.

RVM Install
-------
The Shell Scripts in this repository are meant to install RVM and consequently rubies 1.9.3 and 2.0.0

Vagrant useful commands
-------
    vagrant halt
    vagrant suspend
    vagrant resume
    vagrant destroy
