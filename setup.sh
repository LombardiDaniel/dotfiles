#!/bin/bash

kernel=`uname`

if [[ "$kernel" == "Linux" ]]; then

    debian=`apt-get NOT_A_COMMAND`
    if [[ $? -eq 0 ]]; then
        # Updated local db
        sudo apt-get update
        sudo apt-get upgrade -y
        install_prefix="sudo apt-get -y"
    else
        arch=`pacman NOT_A_COMMAND`
        if [[ $? -eq 0 ]]; then
            pacman -Syyy
            install_prefix="pacman -S"
        fi
    fi

    $install_prefix zsh
    # MUST SET ZSH SHELL TO DEFAULT MANUALLY
    # chsh -s $(which zsh)
    # does this set shell permanently?

elif [[ "$kernel" == "Darwin" ]]; then
    # Installs brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    xcode-select --install
    install_prefix="brew install"
fi

# Installs base packages and the hyper terminal
base_installs=(
act
bpytop
git
hyper
docker
cloc
zsh-syntax-highlighting
powerlevel10k
)

# Creates vim/undodir and installs plugin manager
mkdir -p /.vim/undodir
curl -fLo '~/.vim/autoload/plug.vim' --create-dirs \
     'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Modules with different names depending on the OS:
base_installs_mac_only=(
colima
)

base_installs_arch_only=(
)

for i in ${base_installs[@]} ; do
    yes | $install_prefix $i
done

if [[ "$kernel" == "Linux" ]]; then
    for i in ${base_installs_arch_only[@]} ; do
        yes | $install_prefix $i
    done

elif [[ "$kernel" == "Darwin" ]]; then
    for i in ${base_installs_mac_only[@]} ; do
        yes | $install_prefix $i
    done

fi


# Installs PowerLine fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts


# Install Oh-My-zhs and syntax-highlighting
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

mkdir ~/.zsh
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
cp zsh-syntax-highlighting/themes/* ~/.zsh/
rm -r zsh-syntax-highlighting