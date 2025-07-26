# systemd user-level

### Usage
1. Enable linger for user
``loginctl enable-linger $USER``

This will start user-level services before login to them and let them run eagerly.
