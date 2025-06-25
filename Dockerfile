FROM archlinux/archlinux:base-devel

RUN pacman -Syu --noconfirm git wget curl ripgrep lazygit neovim
COPY . /root/.config/nvim

RUN nvim --headless +"colorscheme tokyonight-day" +qa

WORKDIR /mnt

ENTRYPOINT ["nvim"]
