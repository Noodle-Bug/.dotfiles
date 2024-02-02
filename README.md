# .dotfiles
dotfile config for bash + tmux in wsl


------------------


## Setup
To ease setup, use [GNU stow](https://www.gnu.org/software/stow/)
```bash
sudo apt install stow
cd .dotfiles
stow .
```
<br>

the `--adopt` flag can be used to overwrite what's in the `.dotfiles` directory with existing files, if you get a conflict error.
**This will overwrite what is currently in `.dotfiles` with your existing file**
If you don't want this, and would rather overwrite existing files with the `.dotfiles`, simply delete the existing ones and run `.stow .` again.
```bash
stow --adopt .
```

[Useful youtube video](https://youtu.be/y6XCebnB9gs?si=1xOtrTq_fIoq6FBv)



## Github setup

### Install git-credential-manager
[git-credential-manager](https://github.com/git-ecosystem/git-credential-manager)

### Install gpg
```bash
sudo apt install gpg
```

### Set key
```bash
gpg --full-generate-key
```
<br>

This command will provide options. Defaults should suffice
```
Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
  (14) Existing key from card
```

### Get your generated key id
```bash
gpg --list-secret-keys
```

### Install pass
```bash
sudo apt install pass
```

### Init pass with the key id
```bash
pass init "GPG_KEY"
```
<br>
You should now be set up!
