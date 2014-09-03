mesos-test
==========

## Description

This sets up a test Mesos cluster with 1 Master and 2 Slaves with default settings.

Vagrant & Ansible are used to provision 3 Ubuntu 14.04 LTS (Trusty Tahr) VMs with a private network and the following roles:

192.168.77.11	mesos-m1	Master 1
192.168.77.21	mesos-s1	Slave 1
192.168.77.22	mesos-s2	Slave 2

## Requirements

- Install Vagrant: https://www.vagrantup.com/downloads
- Install Ansible: http://docs.ansible.com/intro_installation.html

## Instructions

- git clone
- vagrant up
- visit http://192.168.77.11:5050/ to confirm the status of the mesos cluster.
- visit http://192.168.77.11:8080/ to confirm the status of marathon.

To start the test docker app, run start-docker-test under test/ which will create an app called /echo and assign it a random port.
To test the test docker app, run test-docker-test which will use marathon's rest api to query host/port and echo a test string to it.
