COMMON_DIR="device/transsion/mt6789-common"
COMMON_URL="https://github.com/transsion-mt6789/twrp-device_transsion_mt6789-common.git"

if [ ! -d "$COMMON_DIR/.git" ]; then
    if [ -d "$COMMON_DIR" ]; then
        echo "ERROR: $COMMON_DIR exists but is not a Git repository"
        exit 1
    fi
    git clone --depth=1 -b fox_12.1 "$COMMON_URL" "$COMMON_DIR"
else
    echo "Common tree already cloned; skipping clone"
fi
