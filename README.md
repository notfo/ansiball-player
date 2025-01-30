## Prerequisites
- Docker and Docker Compose installed
- Ansible installed
- SSH public key (default location: `~/.ssh/id_rsa.pub`)

### Step 1: Set SSH Public Key Environment Variable

**Direct assignment**
```bash
export SSH_PUBLIC_KEY="ssh-rsa AAAAB3N... your_username@hostname"
```
**or read from key file**
```bash
export SSH_PUBLIC_KEY="$(cat $HOME/.ssh/id_rsa.pub)"
```

### Step 2: Deploy Infrastructure with Docker Compose

```bash
docker-compose up -d --build
```

### Step 3: Execute Ansible Playbook

```bash
ansible-playbook ansible/playbook.yml -i ansible/inventory.yml
```
