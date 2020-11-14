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

With `git` we can now clone this repository to our desired destination.

```bash
git clone git@github.com:dominicchapman/dotfiles.git
```

Running `./setup.sh` will install binaries and application with Homebrew.
