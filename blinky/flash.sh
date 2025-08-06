#!/bin/bash

# populate the variable $ZEPHYR_WORKSPACE_DIR
#
# it will have been created when you installed the sdk
# directory will look similar to this:
#
# bootloader build      modules    nrf        nrfxlib    sidewalk   test       tools      zephyr

pushd $ZEPHYR_WORKSPACE_DIR > /dev/null

west flash

popd > /dev/null
