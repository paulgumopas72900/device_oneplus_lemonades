echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Common Tree [1/6]'
# Oneplus SM8250-Common Tree
rm -rf device/oneplus/sm8250-common
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_oneplus_sm8250-common.git -b qpr3 device/oneplus/sm8250-common

echo 'Cloning Lemonades Vendor tree [2/6]'
# Device Vendor Tree
rm -rf vendor/oneplus
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_oneplus_lemonades.git -b qpr3 vendor/oneplus/lemonades

echo 'Cloning Common Vendor tree [3/6]'
# Common Vendor Tree
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_vendor_oneplus_sm8250-common.git -b qpr3 vendor/oneplus/sm8250-common

echo 'Cloning Kernel tree [4/6]'
# Kernel Tree
rm -rf kernel/oneplus
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_kernel_oneplus_sm8250.git -b qpr3 kernel/oneplus/sm8250

echo 'Cloning Hardware Oplus [5/6]'
# Hardware Oplus
rm -rf hardware/oplus
git clone --depth=1 https://github.com/ProjectElixir-Devices/hardware-oplus.git -b qpr3 hardware/oplus

echo 'Cloning Op Extras [6/6]'
# Packages Op Extras
rm -rf packages/apps/OPlusExtras
git clone --depth=1 https://github.com/ProjectElixir-Devices/packages_apps_OPlusExtras.git -b qpr3 packages/apps/OPlusExtras

echo 'Nuking source audio repo and cloning with repo from arrow'
rm -rf hardware/qcom-caf/sm8250/audio
git clone --depth=1  https://github.com/ArrowOS/android_hardware_qcom_audio -b arrow-13.0-caf-sm8250 hardware/qcom-caf/sm8250/audio

echo 'Sync some stuff from lineage'
#Lineage Compat
rm -rf hardware/lineage/compat
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git hardware/lineage/compat

echo 'Completed, Now proceeding to lunch'
