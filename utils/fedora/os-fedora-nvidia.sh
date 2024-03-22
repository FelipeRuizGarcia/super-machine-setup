# https://docs.fedoraproject.org/en-US/quick-docs/set-nvidia-as-primary-gpu-on-optimus-based-laptops/

sudo akmods --force
sudo akmods --force

sudo dnf5 reinstall \
    kernel \
    kernel-core \
    kernel-modules \
    kernel-modules-core \
    akmod-nvidia \
    kmod-nvidia \
    xorg-x11-drv-nvidia \
    xorg-x11-drv-nvidia-power \
    xorg-x11-drv-nvidia-cuda
