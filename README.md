# .dotfiles
dotfile config for bash + tmux in wsl

## Setup
To ease setup, use [GNU stow](https://www.gnu.org/software/stow/)
```
sudo apt install stow
```

## github setup

### install git-credential-manager
[git-credential-manager](https://github.com/git-ecosystem/git-credential-manager)

### install gpg
```
sudo apt install gpg
```

### set key
```
gpg --full-generate-key
```

This should provide options. Default should suffice
```
Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
  (14) Existing key from card
```

### get your generated key id
```
gpg --list-secret-keys
```

### install pass
```
sudo apt install pass
```

### init pass with the key id
```
pass init "GPG_KEY"
```

You should now be set up!
