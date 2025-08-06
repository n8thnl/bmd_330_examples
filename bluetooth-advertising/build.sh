#!/bin/bash

# populate the variable $ZEPHYR_WORKSPACE_DIR
#
# it will have been created when you installed the sdk
# directory will look similar to this:
#
# bootloader build      modules    nrf        nrfxlib    sidewalk   test       tools      zephyr

APP_DIRECTORY="$(pwd)"
TARGET=$(< ./target)

CLEAN=false

for arg in "$@"; do
  case $arg in
    --clean)
      CLEAN=true
      shift
      ;;
    *)
      echo "Unknown option: $arg"
      exit 1
      ;;      
  esac
done

pushd $ZEPHYR_WORKSPACE_DIR > /dev/null

if $CLEAN; then
    echo "Cleaning build"
    rm -rf ./build
fi

west build -b $TARGET $APP_DIRECTORY

popd > /dev/null
