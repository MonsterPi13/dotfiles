#!/bin/bash
# Dotfiles 安装脚本 - 创建软链接

DOTFILES="$HOME/dotfiles"

echo "开始安装 dotfiles..."

# zsh
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

# tmux
ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

# nvim
mkdir -p "$HOME/.config"
ln -sf "$DOTFILES/nvim/nvim" "$HOME/.config/nvim"

# starship
if [ -f "$DOTFILES/starship/starship.toml" ]; then
  ln -sf "$DOTFILES/starship/starship.toml" "$HOME/.config/starship.toml"
fi

echo "安装完成！"
