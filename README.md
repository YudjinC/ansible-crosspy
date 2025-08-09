# ansible-crosspy

[🇷🇺 Читать на русском](README.ru.md)

Lightweight Docker image for running Ansible playbooks in GitLab CI.

## Features
- Based on **Alpine 3.19**
- Includes **ansible-core 2.16**
- Supports **Python 2** and **Python 3** (up to ~3.12–3.16)
- Bundled with:
  - `git`
  - `openssh`
  - `ansible-lint`
  - `community.general` Ansible collection
- SSH host key checking disabled for convenience in CI

## Usage in GitLab CI
```yaml
image: ujinb/ansible-crosspy:1.0.0

stages:
  - deploy

deploy:
  script:
    - ansible-playbook -i inventory/hosts.yaml playbook.yml
