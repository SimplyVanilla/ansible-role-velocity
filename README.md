# ansible-role-velocity

[![CircleCI](https://circleci.com/gh/SimplyVanilla/ansible-role-velocity/tree/main.svg?style=svg)](https://circleci.com/gh/SimplyVanilla/ansible-role-velocity/tree/main)

Ansible role that installs [Velocity](https://papermc.io/software/velocity) on Debian-like systems.

Plugin installation as well as server configuration is currently out-of-scope.

## Installation

### Requirements

In your `requirements.yml`:

```yaml
roles:
  - src: simplyvanilla.velocity
    version: main
```

### Role Variables

```yaml
velocity_version: '3.3.0-SNAPSHOT'

velocity_user: velocity

velocity_path: '/home/velocity'

velocity_heap: 1

velocity_cpu_affinity: []

velocity_flags: g1gc

velocity_restart_on_change: true
```

### Dependencies

_none_

### Example Playbook

```yaml
- hosts: servers
  tasks:
    - ansible.builtin.import_role:
        name: simplyvanilla.velocity
```

## Usage

```bash
$ sudo systemctl status velocity
```

## License

[GPLv3](LICENSE)
