# Awakening Sibling Patch (w/ EU & JP compatibility)
Companion patch to the Gay Awakening mods that allows children of same-sex pairings to be detected as siblings.

This patch is originally by Sierra, I reverse-engineered the patch and redid it for the other regions.

## Will you support KR?
If anyone shows any interest, sure! My Discord and Tumblr are patataofcourse, hmu if you'd like me to make a KR variation.

## How to use
3DS users: You are expected to already have Luma3DS installed and game patching on. See https://3ds.hacks.guide
Citra users: You can find your Citra folder at File > Open Citra Folder. It will change depending on your OS (Windows/macOS/Linux).

1. Download the patch for your region from [the releases page](https://github.com/patataofcourse/AwakeningSibling/releases/latest)
1. Rename the patch to code.ips
1. Place it in your LayeredFS folder (if the folder doesn't exist, create it):
    - JP, Luma3DS: sd:/luma/titles/0004000000072000
    - JP, Citra: [citra folder]/load/mods/0004000000072000
    - US, Luma3DS: sd:/luma/titles/00040000000A0500/
    - US, Citra: [citra folder]/load/mods/00040000000A0500/
    - EU, Luma3DS: sd:/luma/titles/000400000009F100/
    - EU, Citra: [citra folder]/load/mods/000400000009F100/

## Building from source
**Do not follow this unless you know what you're doing. Otherwise, this is useless to you.**

In the following instructions, replace `##` with the region you want to build for: `us`/`eu`/`jp`.

1. Clone the repo (`git clone https://github.com/patataofcourse/AwakeningSibling`)
1. Copy your code.bin to this folder, and rename it to code.##.bin
1. Run `armips patch/##.s`
1. edited.##.bin will be the patched code.bin