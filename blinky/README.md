## Blinky with UART logging for BMD-330 module

This project was successfully compiled using v2.9.1 of the Nordic SDK

### Quickstart

In order to build, you'll need to add your toolchain's `/bin` folder to your path. Additionally, you should populate the shell variable `$ZEPHYR_WORKSPACE_DIR` if you plan on using the scripts. The scripts handle navigating to the workspace direcotry and executing the `west` commands.

- `./build.sh` builds the project
- `./build.sh --clean removes any existing `build` directory in the workspace and builds the project
- `./flash.sh flashes a board with the resulting `.hex` file
