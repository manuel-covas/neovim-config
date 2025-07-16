FROM archlinux/archlinux:base-devel

RUN pacman -Syu --noconfirm git wget curl unzip python python-debugpy nodejs npm ripgrep lazygit neovim
COPY . /root/.config/nvim

RUN nvim --headless +"colorscheme tokyonight-day" +"MasonInstall pyright ruff vtsls" +"TSInstallSync markdown json python html css javascript typescript" +qa

WORKDIR /mnt

ENTRYPOINT ["nvim"]
