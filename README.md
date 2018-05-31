# ubuntu-quickstart
rcfiles and whatnot for bash, zsh, and vim with easy installation

## Installation

Clone the repository with
```
git clone https://github.com/cfalcione/terminal-settings
```
or download and unpack a zip of this repository.

Enter the repository directory
```
cd terminal-settings
```

Make the scripts executable
```
chmod +x *.sh
```

## Usage

You should probably consider forking this repository and using your own rcfiles.

### install.sh
This uses `apt` to install packages. If you're not using a Ubuntu-like distribution, change as necessary.

 This will install:
+ `wget`, `git`, `zsh`, and `vim`
+ `fonts-powerline` and `ttf-ancient-fonts`
+ <a href="https://github.com/robbyrussell/oh-my-zsh">oh-my-zsh</a>
+ <a href="https://github.com/caiogondim/bullet-train.zsh">bullet train</a>
+ <a href="https://github.com/zsh-users/zsh-syntax-highlighting">zsh syntax highlighting</a>

execute with
```
./install.sh
```
optionally set zsh as your user's default shell with
```
chsh --shell $(which zsh)
```

### rcfiles.sh
This will make symbolic links to the rcfiles in the terminal-settings
directory in your home directory.

execute with
```
./rcfiles.sh
```
optionally sourcing the new .zshrc with (replace .zshrc with .bashrc if you're using bash)
```
source ~/.zshrc
```

### git-config.sh
This will set git's global config with your name and email, as well as set git to store credentials and use simple pushing.

execute with
```
./git-config.sh
```

### docker.sh
This will install `docker-ce` and `docker-compose` as well as add the current user to the docker group.

execute with
```
./docker.sh
```

### gcloud.sh
This will install `gcloud` in the current user's home folder

execute with
```
./gcloud.sh
```
