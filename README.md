# Vision
> Build your system, become independent.

Aren't you tired of [enshittification](https://en.wikipedia.org/wiki/Enshittification#Examples)?  
You don't have to deal with proprietary products; the solution is not to play their game.
1. You can physically own your programs and have them pre-configured; your time is saved and respected.
2. You can pick specific versions of packages and have them be the same forever; everything[^1] is open source.
3. You can have a system that always serves you; changing things or updating programs are choices.

Total control, you don't even depend on repositories [^2], but you can use them if you want to.

```bash
.
├── build/ # your resulting iso.
├── build.sh # build script.
├── pkgs.d # packages to be included.
└── root # mounted '/' directory.
```

# Build
1. Create variables in `pkgs.d/*` such as `$system` containing the packages you want.
2. Make sure these are included in the build script (e.g. `-p "$system $drivers $wayland $kde"`).
3. Add (configuration or not) files in the root folder (this will be mounted at `/` on the resulting system).
4. Pull in the `void-mklive` submodule with `git submodule update --init --remote`.
5. Run `bash build.sh`, and the resulting `.iso` will be in `./build`!

> [!TIP]
> You might want to look into [void-mklive](https://github.com/void-linux/void-mklive) to understand what the various flags do.  
> Additionally, it is possible to stop at the rootfs, instead of building a full bootable ISO.

Switch to the `amd`, `nvidia` or `intel` (depending on your card) branch for a selection of graphics drivers.  
This fork has audio, bluetooth and wayland ready to use; if you want the same thing but without these, please use [vision](https://github.com/abchlli).
Once you've played around enough, I recommend forking this repository to be able to fetch changes[^3].

> [!WARNING]
> Make sure to include the microcode for your CPU (e.g. `linux-firmware-amd` or `intel-ucode`) and the additional firmware required by your hardware (e.g. `linux-firmware-network`).

Time to name your own [Void Linux](https://voidlinux.org/) fork!  
This could be done on any other distro or from scratch, but [they](https://github.com/orgs/void-linux/people) make it really comfy to do so.  
Read the [Void Handbook](https://docs.voidlinux.org/)[^4] and browse [Void Packages](https://voidlinux.org/packages/)[^5].

> [!NOTE]
> Use the `vision` tag (if your fork isn't private and on GitHub) to allow discoverability by others.  
> Exited to see all your beautiful [r/unixporn-type](https://www.reddit.com/r/unixporn/top/?t=year) setups easily installable and ready to use.  
> I have Sway and KDE Plasma on Wayland installed and of course, configured exactly to my liking!

[^1]: Excluding some hardware binary blobs, use/make better hardware to avoid this!

[^2]: You can add [void-packages](https://github.com/void-linux/void-packages) as a submodule so that even if Void (going strong since 2008) repositories ever go down and there's not a single mirror available, you can still have everything exactly the way it was; you'll be pulling from upstream and building things yourself.

[^3]: Very rare and if there ever are they'll be changes/additions to the drivers selection in order to support new hardware.

[^4]: You can add [void-docs](https://github.com/void-linux/void-docs/) to include system documentation locally.

[^5]: Refer to the [InfraDocs](https://infradocs.voidlinux.org) if you're curious about how Void Linux runs things; maybe you want to host your [own mirror](https://xmirror.voidlinux.org/).