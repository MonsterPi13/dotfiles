# ─── Proxy ────────────────────────────────────────────────────────────────────
alias proxy='export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897'
alias unproxy='unset https_proxy http_proxy all_proxy'
alias ip='curl ipinfo.io'

# ─── Path ─────────────────────────────────────────────────────────────────────
export PATH="$HOME/.local/bin:$PATH"

# ─── Shell Prompt ─────────────────────────────────────────────────────────────
eval "$(starship init zsh)"

# ─── Plugins ──────────────────────────────────────────────────────────────────
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)

# ─── Aliases ──────────────────────────────────────────────────────────────────
alias ls="eza --icons"
alias ll="eza -la --icons"
alias lt="eza --tree --icons"
alias cat="bat"
alias cd="z"

# ─── Tools (must be last) ─────────────────────────────────────────────────────
eval "$(zoxide init zsh)"
