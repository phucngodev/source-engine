# Guide build on mac

[Original gudie](https://jxhug.notion.site/Guide-to-Installing-Half-Life-2-Using-Source-Engine-on-macOS-9fa5ffc910f5454ab0f0e5da2a9e5b9f)

## Install deps
```bash
brew install sdl2 freetype2 fontconfig pkg-config opus jpeg jpeg-turbo libpng libedit python3
```

## Clone source

```bash
git clone --recursive https://github.com/phucngodev/source-engine
cd source-engine
```

## Configure the build

```bash
# build for half life 2
python3 waf configure -T release --prefix='' --build-games=hl2

# build for counter strike 2
# python3 waf configure -T release --prefix='' --build-games=cstrike
```

## Build the engine for mac

```bash
python3 waf build
```

## Install the game into your desired directory - this can be any directory on your mac

```bash
mkdir -p mac/hl2
python3 waf install --destdir=./mac/hl2
```

## Run the patch script

```bash
cd mac/hl2/
bash patch.sh
```


# References
* https://www.applegamingwiki.com/wiki/Half-Life_2#Native_ARM_build_from_leaked_source
* https://jxhug.notion.site/Guide-to-Installing-Half-Life-2-Using-Source-Engine-on-macOS-9fa5ffc910f5454ab0f0e5da2a9e5b9f

