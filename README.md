## Setup

### 1. Recover your previous configuration

```shell
mv ~/.config ~/.config.bak
mv ~/.bashrc ~/.bashrc.bak
mv ~/.clangd ~/.clangd.bak
mv ~/.clang-format ~/.clang-format.bak
mv ~/dotfiles ~/dotfiles.bak
```

### 2. Clone repo and extract files (with make)

```shell
git clone https://github.com/slava30727/cmc-os-nvim-config.git ~/dotfiles
cd ~/dotfiles
make
```

### 3. Install all components (rust + zoxide + eza + bat)
```shell
sh install.sh
```
