# Inochi Session Nightly Builds

This is not an official build of inochi-session, I use this project artifacts as reference for the official build system.
Don't expect any warranty or support to use them.
For normal supported usage, please get a supported version from the [official website](https://inochi2d.com/#download).

## Installation

You can get the latest builds from the [release section](https://github.com/grillo-delmal/inochi-session-nightly/releases/tag/nightly).

Linux builds of this repository are also provided through the [Inochi2d Flatpak DevTest](https://github.com/grillo-delmal/inochi2d-flatpak-devtest) repo.

```sh
flatpak remote-add grillo-inochi2d oci+https://grillo-delmal.github.io//inochi2d-flatpak-devtest
flatpak install grillo-inochi2d io.github.grillo_delmal.inochi-session
```

## Tips

### Local building flatpak version on Linux

```sh
flatpak-builder build-dir io.github.grillo_delmal.inochi-session.yml --force-clean
```

### Debugging in Linux

You can also install debug symbols.

```sh
flatpak install grillo-inochi2d io.github.grillo_delmal.inochi_session.Debug
```

And with that you will be able to debug it with gdb as [any other flatpak app](https://docs.flatpak.org/en/latest/debugging.html).

```sh
flatpak run --command=sh --devel io.github.grillo_delmal.inochi-session
gdb --ex 'r' /app/bin/inochi-session
```
### Debugging in Windows

Download [WinDbg](http://www.windbg.org/) and the source code from the [release section](https://github.com/grillo-delmal/inochi-session-nightly/releases/tag/nightly)... you can figure out the rest from there.