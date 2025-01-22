ARG FEDORA_MAJOR_VERSION=41
FROM quay.io/fedora-ostree-desktops/sway-atomic:${FEDORA_MAJOR_VERSION}
RUN curl -s -o /etc/yum.repos.d/tailscale.repo https://pkgs.tailscale.com/stable/centos/9/tailscale.repo

RUN dnf in -y labwc tailscale && \
    dnf clean all && \
    systemctl set-default graphical.target 
