set PICO_TOOLCHAIN_PATH ~/Users/aurelia/Code/SDK/arm-gnu-toolchain-12.2.mpacbti-bet1-darwin-x86_64-arm-none-eabi
set PICO_SDK_PATH ~/Code/SDK/pico-sdk

if test -d {$PICO_TOOLCHAIN_PATH}
    set -x PICO_TOOLCHAIN_PATH {$PICO_TOOLCHAIN_PATH}
end

if test -d {$PICO_SDK_PATH}
    set -x PICO_SDK_PATH {$PICO_SDK_PATH}
end