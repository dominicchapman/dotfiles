# dotfiles

These dotfiles contain configuration for terminals, editors, source control and other tools. Enjoy!

## Installation

We can use the system software update tool on a fresh install of macOS to download and install all updates applicable to our system.

Adding the Xcode Command Line Tools enables use of tools like `git` and `make`.

```bash
sudo softwareupdate --install --all
xcode-select --install
```

Homebrew can be used to install apps and binaries.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

With `git` available we can now clone this repository to our desired destination.

```bash
git clone git@github.com:dominicchapman/dotfiles.git
```

Running `./setup.sh` will install binaries and application with Homebrew.

> Please note that upstream has asked us to make explicit managing nvm via Homebrew is unsupported by them and you should check any problems against the standard nvm install method prior to reporting.

To have a working copy of (`nvm`)[https://formulae.brew.sh/formula/nvm] through Homebrew we should create NVM’s working directory if it does not exist and add the following code snippet to our desired shell configuration file (`.zshrc`).

```bash
mkdir ~/.nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
```

To manage Node entirely with `nvm` we must first uninstall any dependents like Yarn for the existing version of Node. Once Node itself has been uninstalled we can review the remote Node options and install our desired version.

```bash
brew uninstall yarn
brew uninstall node
nvm ls-remote
nvm install lts/erbium
```

Running `./mac/dock.sh` and `./mac/defaults.sh` will add sensible defaults for the macOS Dock and the operating system more generally.

We can add Oh My Zsh with `curl`.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Activating

Either move dotfiles to the root directory or use symbolic links (symlink) to open the files from the directory this repository was cloned into.

## Other

### Chrome

- Install [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
- Install [Apollo Client Developer Tools](https://chrome.google.com/webstore/detail/apollo-client-developer-t/jdkknkkbebbapilgoeccciglkfbmbnfm)

### Visual Studio Code

- Install [Night Owl (No Italics)](https://marketplace.visualstudio.com/items?itemName=sdras.night-owl) theme
- Install [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- Install [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- Install [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- Install [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

### iTerm 2

- Set Font to FiraCode Nerd Font
- Set Font Size to 18
- Set New Windows to Columns 75
- Set New Windows to Rows 25
- Set Working Directory to Reuse previous session’s directory
