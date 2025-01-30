#!/bin/bash

echo "$SSH_PUBLIC_KEY" > /home/ubuntu/.ssh/authorized_keys

chmod 600 /home/ubuntu/.ssh/authorized_keys
chown ubuntu:ubuntu /home/ubuntu/.ssh/authorized_keys

/usr/sbin/sshd -D
