rm -rf .repo/local_manifests ; \
repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android.git -b 14.0 -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/aosp-realm/android_build_manifest.git -b apollo-cr14 .repo/local_manifests && \
/opt/crave/resync.sh && \
source build/envsetup.sh && \
brunch apollo > /dev/null
