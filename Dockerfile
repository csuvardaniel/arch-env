# Use Arch Linux base-devel image as the base
FROM archlinux:base-devel

# Update the system, install Fish shell, and clean up package cache
RUN pacman -Syyu --noconfirm && \
    pacman -S --noconfirm fish git git-lfs fastfetch python nodejs npm htop 7zip python-pip python-pipenv wget nano neovim && \
    rm -rf /var/cache/pacman/pkg/* && \
    usermod -s /bin/fish root

# Default command (starts an interactive Fish shell)
CMD ["/bin/fish"]
