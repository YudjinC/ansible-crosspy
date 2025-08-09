# ansible-crosspy

Лёгкий Docker-образ для запуска Ansible-плейбуков в GitLab CI.

## Особенности
- Базовый образ **Alpine 3.19**
- Включает **ansible-core 2.16**
- Поддержка **Python 2** и **Python 3** (до ~3.12–3.16)
- В комплекте:
  - `git`
  - `openssh`
  - `ansible-lint`
  - Коллекция Ansible `community.general`
- Отключена проверка SSH host key для удобства в CI

## Пример использования в GitLab CI
```yaml
image: ujinb/ansible-crosspy:1.0.0

stages:
  - deploy

deploy:
  script:
    - ansible-playbook -i inventory/hosts.yaml playbook.yml
