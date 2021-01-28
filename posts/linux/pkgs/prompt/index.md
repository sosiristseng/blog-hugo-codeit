# Command prompt


Command prompt tools to enhance your terminal experience.

<!--more-->

## Bashit

[Bash-it](https://github.com/Bash-it/bash-it) is the community's collection of useful bash scripts, inspired by the `oh-my-zsh` project.

It provides autocompletion, themes, aliases, custom functions, etc for bash prompt.

```bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

bash ~/.bash_it/install.sh
```

## zsh improved framework (zimfw)

[`zim`](https://github.com/zimfw/zimfw) is a blazing fast zsh plugin framework, about 30x faster than the most popular [`oh-my-zsh`](https://ohmyz.sh/).

You'll need `zsh` for `zim(fw)` to work.

```bash
wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

Additional settings of my own:

### Powerlevel10k prompt

From [powerlevel10k@GitHub](https://github.com/romkatv/powerlevel10k#zim), replace `zmodule steeef` with

```bash
zmodule romkatv/powerlevel10k
```
in `~/.zimrc` and then run `zimfw install` in zsh.

Restart zsh to go through Powerlevel10k's interactive setup.

You might need [powerline fonts](https://github.com/romkatv/powerlevel10k#manual) for proper font rendering.

### Node version manager (nvm)

Add this line in `~/.zimrc` for [zsh-nvm module](https://github.com/lukechilds/zsh-nvm) and then run `zimfw install` in zsh.

```bash
zmodule lukechilds/zsh-nvm
```

To save loading time of zsh (about 70x), you can enable lazy loading, executing the full npm scripts only when encountering related commands such as `npm`, `nvm`, `node`.

Add this line in `~/.zshrc`, before loading zmodules:

```bash
export NVM_LAZY_LOAD=true
```

## Starship

[🚀 Starship](https://starship.rs/) is an enhancement for command prompt in a multitude of shells, powered by Rust. Available for bash, zsh, fish, powershell, etc.

### Generic installation

Install the standalone binary

```bash
sudo -v && curl -fsSL https://starship.rs/install.sh | bash
```


### Using `yay` to install

For Arch and derivatives (enOS, Garuda, Manjaro)

```bash
yay -S starship-bin # or just "starship" if you don't mind compiling the Rust code
```

### Usage

Append this line in your shell's `*.rc` files and restart your shell to load starship.

`~/.bashrc`
```bash
# ~/.bashrc
eval "$(starship init bash)"
```

`~/.zshrc`
```bash
# ~/.zshrc
eval "$(starship init zsh)"
```

You may need [nerd fonts](https://www.nerdfonts.com/font-downloads) the special characters in the prompt.

## powerline go

[Powerline Go](https://github.com/justjanne/powerline-go), a beautiful and useful low-latency prompt for your shell, written in go language. Available for bash, zsh, fish, powershell, etc.

