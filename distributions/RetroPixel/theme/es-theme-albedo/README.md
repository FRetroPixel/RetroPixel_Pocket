- [About](#about)
- [Last changes](#last-changes)
- [Compatibility](#compatibility)
- [Features](#features)
- [Tweaks](#tweaks)
- [Screenshots](#screenshots)
- [About Auto Collection Logos](#about-auto-collection-logos)
  - [What are collections?](#what-are-collections)
  - [Currently supported franchises](#currently-supported-franchises)
- [Supported Platforms](#supported-platforms)
- [License](#license)
- [Made With](#made-with)

# About

![Version 1.230417](https://img.shields.io/badge/Version_1.230417-ad5f00?style=for-the-badge)

Albedo is a theme for EmulationStation. It's a fork of [Elementerial](https://github.com/mluizvitor/es-theme-elementerial), another ES theme built by me.
It has flat surfaces, plays with transparency and sharp edges.

> This theme supports custom backgrounds. Read [CUSTOMBG.md](CUSTOMBG.md) for more details.
>
> I made an web app to load, crop and save images named as the designated system.
> It's not powerful as Photoshop or GIMP, but help collect a lot of images and download them in one go.
>
> Access [Albedo Wallpaper Cropper](https://albedo-wallpaper-cropper.vercel.app).
>
>  If you're concerned about privacy, this web app will never collect or send any information anywhere. The images loaded are saved locally on the browser database. As an web app, it can be used offline after the first load.

<br>

# Last changes
```
- Added Capcom PlaySystem 1, 2 & 3 logos
- Added auto collection logos
- Updated Vertical Arcade logo
- Updated carousel background to use random images when there is no background provided by theme
```

<br>

# Compatibility

Created for and tested on the following resolutions:
- **480x320** (3:2 screen ratio), tested on Anbernic RG351M running AmberELEC
- **640x480** (4:3 screen ratio), tested on VirtualBox running Batocera
- **1920x1152** (5:3 screen ratio), tested on VirtualBox running Batocera

Albedo was made for [AmberELEC](https://amberelec.org) supported devices, as RG351P/M/V/MP, RG552, but can be used on other systems running EmulationStation (no guarantee).

<br>

# Features
- Supported views: Basic, Detailed, Video and Grid
- 10 accent colors
- Scanlines overlay
- Game list background: none, blurred, default, custom
- Carousel background: Video, screenshots defined by theme, random game screenshots and custom background
- Game logos: colored and monochromatic
- Statusbar: Clock and battery, just clock, just battery and hidden.

<br>

# Tweaks

You can choose between 10 accent colors:

![Blue](https://i.imgur.com/cIEaQNR.png)
![Purple](https://i.imgur.com/ZRQtKlT.png)
![Pink](https://i.imgur.com/ceCTdo3.png)
![Red](https://i.imgur.com/rmMdfRY.png)
![Orange](https://i.imgur.com/YUhdtVZ.png)
![Yellow](https://i.imgur.com/4FmZudb.png)
![Green](https://i.imgur.com/3bFXwCC.png)
![Teal](https://i.imgur.com/QY7dtDb.png)
![Beige](https://i.imgur.com/kDmQIJm.png)
![Gray](https://i.imgur.com/jRyr9ly.png)


Set background style for game list:

| ![Normal background](./assets/systems/homebrew.webp) | ![Blurred background](./assets/systems/blurred/megadrive.blurred.webp) | ![No background](./assets/systems/blurred/unknown.blurred.webp) |
| :--------------------------------------------------: | :--------------------------------------------------------------------: | :-------------------------------------------------------------: |
|                  Normal background                   |                           Blurred Background                           |                          No background                          |

<br>

Set background overlay:

| ![Scanlines](https://i.imgur.com/1ppaJlC.png) | ![Clean](https://i.imgur.com/O6JBfeL.png) |
| :-------------------------------------------: | :---------------------------------------: |
|                   Scanlines                   |                   Clean                   |

<br>

Load your own custom backgrounds:

> Please, read [CUSTOMBG.md](CUSTOMBG.md) for more details.

| ![Default background](https://i.imgur.com/v70hcvF.png) | ![Custom background](https://i.imgur.com/JGEwg2Q.png) |
| :----------------------------------------------------: | :---------------------------------------------------: |
|                   Default background                   |                   Custom Background                   |

And many more.

<br>

# Screenshots
| ![](https://i.imgur.com/mkGiWv9.png) |            ![](https://i.imgur.com/K506TyI.png)             |
| :----------------------------------: | :---------------------------------------------------------: |
|      Colored Logos + Scanlines       | Monochromatic Logos + Green accent color. Removed scanlines |

| ![](https://i.imgur.com/M4kzFE8.png) |             ![](https://i.imgur.com/1TNAfUG.png)             |
| :----------------------------------: | :----------------------------------------------------------: |
|   Grid view + Purple accent color    | Detailed view + Yellow accent color + Background not blurred |

|          ![](https://i.imgur.com/cZMtZzc.png)          | ![](https://i.imgur.com/bTMwPvR.png) |
| :----------------------------------------------------: | :----------------------------------: |
| Basic view + Blue accent color + No console background |   System Menu + Pink accent color    |

<br>

# About Auto Collection Logos

Elementerial now show logo for some auto/custom collections.

## What are collections?
Collections are a way to arrange your games.
You can create editable or dynamic collections.
Editable collections are those you manually add games,
while Dynamic collections are those you can set filters or search texts.

To create a new collection on EmulationStarion and enable them to be displayed on main screen/carousel:

On EmulationStation → Start → Game Collection Settings
1. Group unthemed custom collections (disabled)
2. Create new editable/dynamic collection
   1. Insert the name of the collection
   2. See the list below for collection names that have a logo

## Currently supported franchises

There is a couple of logos for the following franchises:
- `Final Fantasy`
- `Mario`
- `Metroid`
- `Persona`
  - I like to create Persona collection as a dynamic collection and use the text `persona, megami tensei` as **Find Games** content, so the collection gathers all games with *Persona* and *Megami Tensei* in its titles (which includes Shin Megami Tensei as well).
- `Pokemon`
- `SaGa`
- `Zelda`
-
Miscellaneous Collections:
- `Grouvee Playing`

The names listed are case sensitive and with white spaces (like in `Final Fantasy`). If you use any variation like `MariO` or `final-fantasy` your collection will not display the logo.

<br>

# Supported Platforms

![Platforms: 111](https://img.shields.io/badge/Platforms:_111-3a9104?style=for-the-badge) ![plus](https://img.shields.io/badge/+-007367?style=for-the-badge) ![Special Hack variants: 8](https://img.shields.io/badge/Special_Hack_variants:_8-0d52bf?style=for-the-badge)

3DO,
Adventure Vision,
Amiga,
Amiga CD32,
Amstrad CPC,
Arduboy,
Atari 800,
Atari 2600,
Atari 5200,
Atari 7800,
Atari Jaguar,
Atari Lynx,
Atari ST,
Atomiswave,
Build Engine,
Casio PV-1000,
Capcom PlaySystem 1,
Capcom PlaySystem 2,
Capcom PlaySystem 3,
Channel F,
CHIP-8,
ColecoVision,
Commodore 16,
Commodore 64,
Commodore 128,
Doom,
Dreamcast,
EasyRPG,
Epoch PC 64/128,
Famicom,
Famicom Disk System,
FinalBurn Neo,
Gamate,
GameKing,
Game & Watch,
Game Boy Advance and Hacks,
Game Boy and Hacks,
Game Boy Color and Hacks,
Game Gear and Hacks,
Game Master,
Game Pocket Computer,
Genesis and Hacks,
Homebrew,
Intellivision,
J2ME,
LaserDisc,
LowRes NX,
MAME,
Master System,
Mega-CD,
Mega Drive and Hacks,
Mega Duck,
Microsoft DOS,
MSX,
MSX2,
Naomi,
Neo Geo,
Neo Geo CD,
Neo Geo Pocket,
Neo Geo Pocket Color,
Nintendo 64,
Nintendo DS,
Nintendo Entertainment System and Hacks,
Odyssey²,
OpenBOR,
PC-88,
PC-98,
PC-FX,
PC Engine,
PC Engine CD,
Philips CD-i,
Pico-8,
Pokémon Mini,
Ports,
PlayStation,
PSP,
PSP Minis,
P/ECE,
Satellaview,
Saturn,
ScummVM,
Sega 32X,
Sega CD,
Sega SC-3000,
Sega SG-1000,
Super Cassette Vision,
Super Famicom,
Sharp X1,
Sharp x68000,
Sinclair ZX81,
Sinclari ZX Spectrum,
Super Nintendo and Hacks,
Super Nintendo MSU-1,
Solarus,
SuFami Turbo,
SuperGrafx,
Supervision,
TurboGrafx 16,
TurboGrafx CD,
TIC-80,
TV-Computer,
Uzebox,
Vectrex,
VIC-20,
VideoPac,
Virtual Boy,
WASM-4,
Wolfenstein 3D,
Wonderswan,
Wonderswan Color,
Z-Machine.

<br>

![Collections and Tools: 14](https://img.shields.io/badge/Collections_and_Tools:_14-cc3b02?style=for-the-badge)

2 Players,
4 Players,
All Games,
Arcade,
Custom Collections,
Favorites,
Last Played,
Lightgun Games,
MPlayer,
Never Played,
Retro Achievements,
Screenshots,
System Tools,
Vertical Arcade.

<br>

# License

All [videogame and computer system logos](./assets/logos/) used are the property of their respective Developers/Producers/Distributors/Licensors.


Some logos were taken from [Dan Patrick's set](https://archive.org/details/console-logos-professionally-redrawn-plus-official-versions). (Thanks for the great work).

[Fonts](./assets/fonts/) are licensed under Open Font License.

[Icons](./assets/icons/) are taken from [Pictogrammers](https://pictogrammers.com/library/mdi/). (Previously *Material Icons Community*)

All the files, code and images not mentioned above are licensed under the [MIT License](./LICENSE).

<br>

# Made With

![Inkscape](https://img.shields.io/badge/Inkscape-485a6c?style=for-the-badge&logo=Inkscape&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-4d4d4d?style=for-the-badge&logo=Figma&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual_Studio_Code-0d52bf?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)
![And](https://img.shields.io/badge/And-cc3b02?style=for-the-badge&logoColor=white)
![Love](https://img.shields.io/badge/Love-bc245d?style=for-the-badge&logoColor=white)
