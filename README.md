# Awakening Sibling Patch (w/ EU compatibility)
Companion patch to the Gay Awakening mods that allows children of same-sex pairings to be detected as siblings.

This patch is originally by Sierra, I REd it and redid it for the European version.

## Will you support JP / KR?
If anyone shows any interest, sure! My Discord is patataofcourse#5556 and my Tumblr is patataofcourse, hmu if you'd like me to make JP/KR variations.

## How to use
3DS users: You are expected to already have Luma3DS installed and game patching on. See https://3ds.hacks.guide
Citra users: You can find your Citra folder at File > Open Citra Folder. It will change depending on OS.

1. Download the patch for your region from the Releases tab (link goes here)
1. Rename the patch to code.ips
1. Place it in your LayeredFS folder:
    - US, Luma3DS: sd:/luma/titles/00040000000A0500/
    - US, Citra: [citra folder]/load/mods/00040000000A0500/
    - EU, Luma3DS: sd:/luma/titles/000400000009F100/
    - EU, Citra: [citra folder]/load/mods/000400000009F100/

## Building
In the following instructions, replace `##` with your region: `us`/`eu`/ etc.

1. Copy your code.bin to this folder, and rename it to code.##.bin
1. Run `armips main.s -definelabel ## 0`
1. edited.##.bin will be the patched code.bin