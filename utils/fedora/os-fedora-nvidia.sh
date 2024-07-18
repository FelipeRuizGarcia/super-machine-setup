# https://docs.fedoraproject.org/en-US/quick-docs/set-nvidia-as-primary-gpu-on-optimus-based-laptops/

sudo akmods --force

# 'kernel-*6.9.5-350.vanilla.fc40.x86_64' \
    #--releasever=40 \
    #--allow-downgrade \
    #--allowerasing \

sudo dnf5 reinstall \
    --releasever=40 \
    --allow-downgrade \
    nvidia-modprobe \
    nvidia-persistenced \
    nvidia-settings \
    xorg-x11-server-Xwayland \
    xorg-x11-server-common \
    xorg-x11-server-Xorg \
    xorg-x11-drv-nvidia \
    xorg-x11-drv-nvidia-libs \
    xorg-x11-drv-nvidia-power \
    xorg-x11-drv-nvidia-cuda \
    xorg-x11-drv-nvidia-cuda-libs \
    xorg-x11-drv-nvidia-kmodsrc \
    akmod-nvidia \
    'kmod*' \
    'akmod*' \
    'bpftool' \
    kmod-nvidia \
    kernel \
    kernel-devel \
    kernel-core \
    kernel-modules \
    kernel-modules-core
