# toolchain64

This is a (source of) docker image of the toolchain for my Nintendo 64 dev.

Built images are published at: https://hub.docker.com/r/murachue/toolchain64

- binutils with my RSP supported version: https://github.com/murachue/binutils-gdb
- GCC
- newlib
- `*tools` branch/tag only: header, n64tool and chksum64 from [libdragon](https://github.com/DragonMinded/libdragon)
- No other libraries/tools are installed (library-agnostic)
- `o32`, `o64`, `n64` ABI support (libgcc/newlib)
	- `o32` prefix is `mips-elf-`
	- `o64` and `n64` prefix is `mips64-elf-`.
	- `n32` is not usable (yet) because gcc is confused with 'elf32-nbigmips'.
	- `eabi` is not supported.

Docker image tags are represented as branches in git repo.

# Alternatives

- https://github.com/anacierdem/libdragon-docker
	- Another toolchain that also contains libdragon
	- Pure binutils (not my RSP-supported version)
	- `o64` ABI only
	- https://hub.docker.com/r/anacierdem/libdragon
- https://github.com/tj90241/n64chain
	- Non-libdragon way toolchain
	- checksum, rspasm...
- https://github.com/Mr-Pnut/portable-n64-toolchain
	- Nintendo-SDK way toolchain
	- With Rust support
