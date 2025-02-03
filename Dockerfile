FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates openssh-server sudo python3 && \
    apt-get clean && \
    mkdir /var/run/sshd && \
    mkdir -p /home/ubuntu/.ssh/ && \
    echo 'ubuntu:password' | chpasswd

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 80 22

ENTRYPOINT ["/entrypoint.sh"]