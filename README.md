# Docker container for building [https://github.com/STMicroelectronics/gnu-tools-for-stm32](the STM32 toolchain)

**I am not related in any way to STM, I have no intention to maintain this repository, it's posted purely as an educational example.**

Toolchain version (git tag) can be adjusted in `clone-toolchain.sh`. 
Building of individual toolchain modules can be enabled/disabled in `build-toolchain.sh` (`skip_steps` flag).

# Usage

```sh
cd scripts
./build-docker-image.sh
./clone-toolchain.sh
./build-toolchain.sh
```

# License

Do whatever you want.

