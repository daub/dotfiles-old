### Encrypted password in *sec.conf*

```
/secure passphrase <pass>
/secure set freenode_username <user>
/secure set freenode_password <pass>
```

#### Shell aliases

Consider adding local alias if using *pass*

```sh
alias chat='WEECHAT_PASSPHRASE=$(pass $(id -un)/weechat) weechat'
```

### Plugins

Add a few plugins for better experience

```
/script install vimode.py
```
