# Vendor
rm -rf vendor/xiaomi/vayu
git clone --depth=1 https://github.com/SkylineUI-Devices/vendor_xiaomi_vayu.git vendor/xiaomi/vayu -b fifteen-staging

# Kernel (Skyline)
rm -rf kernel/xiaomi/vayu
git clone --depth=1 https://github.com/aospa-x3pro/kernel_msm-4.14.git -b vauxite kernel/xiaomi/vayu

# Hardware
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi -b lineage-22.0
rm -rf hardware/xiaomi/megvii

# Rename conflicting qti_kernel_headers in source
sed -i 's/"qti_kernel_headers"/"qti_kernel_headers_old"/g' vendor/flare/build/soong/Android.bp
