### Encrypted password in *sec.conf*

```
/secure passphrase <pass>
/secure set freenode_username <user>
/secure set freenode_password <pass>
```

#### Aliases

```sh
alias chat='WEECHAT_PASSPHRASE=$(pass $(id -un)/weechat) weechat'
```
