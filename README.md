# dotfiles

I use GNU `stow` to install the configuration.

e.g.

```bash
$ stow bash git neovim
```

## .gitconfig.user

```
[user]
   name = <username>
   email = <email>
```

## Import GPG key from Keybase

```bash
$ keybase pgp export | gpg --import
$ keybase pgp export --secret | gpg --allow-secret-key --import
```
