#!/usr/bin/env bash

ansible-playbook play.yaml -i hosts.ini --private-key ../ssh/k8s_test.pub
