# dotfiles

## Quick Install
Just download the repo, `cd` into the directory and run the `setup.sh`, followed by the `install.sh`. The
setup script installs base packages such as git and some dependencies. The install script only treats of the
dotfiles themselves.

If you already have git installed, just run this:
```sh
git clone https://github.com/LombardiDaniel/.dotfiles.git && cd dotfiles && ./setup.sh && ./install.sh
```


## Manual Install
For Linux, change the first step as accordingly.

1. Install Apple command-line-tools, brew and git

```sh
xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git

```

2. Make sure you have [hyper.js](https://hyper.is) installed

```sh
brew install hyper
```

3. Installs PowerLine Fonts

```sh
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

4. Install oh-My-ZSH

```sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

5. Installs Syntax Highlighting for ZSH

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

5. Clone the repo into a new directory

```sh
git clone https://github.com/LombardiDaniel/.dotfiles.git
```

6. CD into directory and run install script (creates symlinks)

```sh
cd .dotfiles

./install.sh
```
