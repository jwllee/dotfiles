# dotfiles for mac

** Table of content **
- [About](#about)
    * [Installing](#installing)
    * [Customizing](#customizing)
- [Resources](#resources)
    * [.vim](#vim)

## About
### Installing
Assumption:
- Using zsh rather than bash
Prerequsite:
- Install [Homebrew](https://brew.sh)
- Install gpg and pinentry-mac

```console
$ brew install pinentry-mac
$ brew install gnupg2
# Check out [this stackoverflow](https://stackoverflow.com/questions/41502146/git-gpg-onto-mac-osx-error-gpg-failed-to-sign-the-data/41506446)
# for why the below enables gpg sign for git
$ echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
$ make
```
This will create symlinks from this repo to your home folder.

### Customizing
Save env vars, etc in a `.extra` file, that looks something like this:
```zsh
###
### Git credentials
###

GIT_AUTHOR_NAME="Your Name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="email@you.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
GH_USER="nickname"
git config --global github.user "$GH_USER"

###
### Gmail credentials for mutt
###
export GMAIL=email@you.com
export GMAIL_NAME="Your Name"
export GMAIL_FROM=from-email@you.com
```

## Resources

### `.vim`
For my `.vimrc` and `.vim` dotfiles see
[github.com/jwllee/.vim](https://github.com/jwllee/.vim).

test 2 factor authentication
