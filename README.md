# Dotfiles

## Setup
1. Add SSH Key to Github [Settings → SSH and GPG Keys](https://github.com/settings/keys) (more info at: [GitHub Docs](https://docs.github.com/de/authentication/connecting-to-github-with-ssh))
2. Create/edit ssh-config file: `nano ~/.ssh/config` and add following:
  ```bash
  Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519_github
  ```
3. Test the connection `ssh git@github.com`
4. install yadm with your packagemanager (more info at: [yadm Docs](https://yadm.io/docs/install))
5. Clone the repo with `yadm clone git@github.com:Gregor-zbjk/dotfiles.git` & check with `yadm status`
