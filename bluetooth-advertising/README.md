## Blinky with UART logging for BMD-330 module

This project was successfully compiled using v2.9.1 of the Nordic SDK

**Note**: The source for this was copied from Nordic's developer academy Bluetooth Fundamentals course Lesson 2 Exercise 1. Some of the files present in this project were added or changed in order to establish compatibility with the BMD-330.

For more information, you can visit [the academy](https://academy.nordicsemi.com/) and sign up for the free course.

### Quickstart

In order to build, you'll need to add your toolchain's `/bin` folder to your path. Additionally, you should populate the shell variable `$ZEPHYR_WORKSPACE_DIR` if you plan on using the scripts. The scripts handle navigating to the workspace direcotry and executing the `west` commands.

- `./build.sh` builds the project
- `./build.sh --clean removes any existing `build` directory in the workspace and builds the project
- `./flash.sh flashes a board with the resulting `.hex` file

Using a terminal and a UART module like the `CP2102`, you should be able to see logs from the BMD-330. Example command which I use:
```
screen /dev/cu.usbserial-<deviceid> 9600
```