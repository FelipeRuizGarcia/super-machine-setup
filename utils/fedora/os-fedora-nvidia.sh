# https://docs.fedoraproject.org/en-US/quick-docs/set-nvidia-as-primary-gpu-on-optimus-based-laptops/

sudo akmods --force

sudo dnf5 reinstall \
    nvidia-modprobe \
    nvidia-persistenced \
    nvidia-settings \
    xorg-x11-drv-nvidia \
    xorg-x11-drv-nvidia-libs \
    xorg-x11-drv-nvidia-power \
    xorg-x11-drv-nvidia-cuda \
    xorg-x11-drv-nvidia-cuda-libs \
    xorg-x11-drv-nvidia-kmodsrc \
    akmod-nvidia \
    kmod-nvidia \
    kernel \
    kernel-core \
    kernel-modules \
    kernel-modules-core
