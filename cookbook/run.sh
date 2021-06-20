#!/usr/bin/env bash

ansible-playbook play.yaml -i hosts.ini --private-key ../ssh/id_rsa.pub --ask-become-pass -u coopers -v
