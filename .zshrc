# ╔══════════════════════════════════════════════════════════╗
# ║  🐚 ZSH CONFIGURATION                                    ║
# ║  ✨ Clean | Minimal | Fast | Aesthetic                   ║
# ╚══════════════════════════════════════════════════════════╝

# ────────────────────────────────────────────────────────────
# 🌙 Environment Variables
# ────────────────────────────────────────────────────────────
eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/zinit/zinit.zsh  # Load Zinit

export XDG_CONFIG_HOME="$HOME/.config"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# 🚀 Load Starship Prompt
# eval "$(starship init zsh)"
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/bubblesextra.omp.json)"

# 🐢 Atuin (Better Shell History)
eval "$(atuin init zsh)"

# ────────────────────────────────────────────────────────────
# 🌻 Zinit Plugin Manager - Turbo Mode
# ────────────────────────────────────────────────────────────

# 🔌 Zsh plugins, aliases + Zinit Turbo
zinit depth"1" wait lucid light-mode for \
  atinit"zicompinit; zicdreplay; unalias zi" \
      zsh-users/zsh-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      clarketm/zsh-completions \
  pick"themes/catppuccin_mocha-zsh-syntax-highlighting.zsh" \
      catppuccin/zsh-syntax-highlighting \
      jeffreytse/zsh-vi-mode \
      aloxaf/fzf-tab \
      hlissner/zsh-autopair \
      fdellwing/zsh-bat \
      phucleeuwu/yazi-zoxide.zsh \
      phucleeuwu/aliases--.zsh \
      phucleeuwu/catppuccin-fzf.zsh \
      phucleeuwu/om.zsh-aliases \
      OMZP::brew \
      OMZP::sudo \
      OMZP::eza \
      OMZP::zoxide \
      OMZP::alias-finder \
      OMZP::fzf \
      OMZP::copypath \
      OMZP::copyfile \
      OMZP::gitignore \
      OMZL::clipboard.zsh \
      OMZP::git \
      OMZP::git-auto-fetch

# ────────────────────────────────────────────────────────────
# 🔌 Plugin Configurations
# ────────────────────────────────────────────────────────────
#  `eza` (Enhanced `ls`)
zstyle ':omz:plugins:eza' 'show-group' no  
zstyle ':omz:plugins:eza' 'git-status' yes  
zstyle ':omz:plugins:eza' 'icons' yes  

#  `alias-finder`
zstyle ':omz:plugins:alias-finder' autoload yes  
zstyle ':omz:plugins:alias-finder' longer yes  
zstyle ':omz:plugins:alias-finder' exact yes  
zstyle ':omz:plugins:alias-finder' cheaper yes  
