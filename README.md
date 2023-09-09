# dotfiles

These dotfiles contain configuration for terminals, editors, source control and other tools. Enjoy!

## Installation

Use the system software update tool on a fresh install of macOS to download and install all updates applicable to the system.

Add the Xcode Command Line Tools to access `git` and `make`.

```bash
sudo softwareupdate --install --all
xcode-select --install
```

Add Homebrew to install apps and binaries.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Clone this repository to the desired directory.

```bash
git clone git@github.com:dominicchapman/dotfiles.git
```

Run `./setup.sh` to install binaries and applications with Homebrew.

Add Oh My Zsh with `curl`.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install [`zsh-nvm`](https://github.com/lukechilds/zsh-nvm) as an Oh My Zsh custom plugin and add it to the plugins list in `~/.zshrc`.

```bash
plugins=(git zsh-nvm)
```

Install [dockutil](https://github.com/kcrawford/dockutil).
> [!NOTE]  
> v3 may not be supported via Homebrew. Track [this PR](https://github.com/kcrawford/dockutil/issues/146).

Run `./mac/dock.sh` and `./mac/defaults.sh` to add sensible defaults for the macOS dock and wider OS.

## Activating

Move dotfiles to the root directory or use symlinks to open the files from the directory this repository was cloned into.

## Other

### SSH keys for GitHub

Check for existing SSH keys.

```bash
ls -al ~/.ssh
```

Follow [these steps](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) to generate a new SSH key and add it to ssh-agent.

Follow [these steps](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to add a new SSH key to a GitHub account.


### Chrome

- Install [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)

### Visual Studio Code

- Install [Night Owl (No Italics)](https://marketplace.visualstudio.com/items?itemName=sdras.night-owl) theme
- Install [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- Install [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- Install [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- Install [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

### iTerm 2

- Set Font Size to 18
- Set New Windows to Columns 75
- Set New Windows to Rows 25
- Set Working Directory to Reuse previous session’s directory
