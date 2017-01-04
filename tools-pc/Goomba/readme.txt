Goomba v2.0
-=-=-=-=-=-=-

It's a Gameboy emulator for the GameBoy Advance. 
- Why? The GBA allready plays gameboy games.
- Well, I don't really have a good excuse, see it as a programming experiment.

Getting Started
-=-=-=-=-=-=-=-

Before you can use Goomba, you need to add some GB roms to the emulator.
You can do this with various tools (Goomba Front etc.).
Or you can do it manual by using a "DOS" shell:
copy /b goomba.gba+game1.gb+game2.gb goombamenu.gba
you can also insert a splashscreen between goomba and the first game if you want to.
Make sure the game's size are correct and that they contain a "real" Nintendo header,
some unlicensed games seem to use their own headers.
Also make sure your flashing software allocates 64kByte/512kbit SRAM for Goomba.

Controls
-=-=-=-=

Menu navigation:  Press L+R to open the menu, A to choose, B (or L+R again)
to cancel.

Speed modes:  L+START switches between throttled/unthrottled/slomo mode.

Quick load:  R+START loads the last savestate of the current rom.

Quick save:  R+SELECT saves to the last savestate of the current rom (or makes
a new one if none exist).

Sleep:  START+SELECT wakes up from sleep mode (activated from menu or 5/10/30
minutes of inactivity)

Other Stuff
-=-=-=-=-=-=-

Gameboy SRAM: Goomba automaticly takes care of games which use 8kByte SRAM,
  games which use 32kByte SRAM (most of the Pokemon games) must be saved
  by using savestates though.
Link transfer:  Sends Goomba to another GBA.  The other GBA must be in
  multiboot receive mode (no cartridge inserted, powered on and waiting with
  the "GAME BOY" logo displayed).  Only one game can be sent at a time, and
  only if it's small enough to send (128kB or less). A game can only
  be sent to 1 (one) Gameboy at a time, disconnect all other gameboys during
  transfer.

Multi player link play: NOT DONE YET.

PoGoomba: If you wish to use Goomba with Pogoshell
  just rename goomba.gba to gb.bin and put it in the plugins directory.

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Big thanks to www.XGFlash2.com for support, go there for all your GBA/SP flash card needs.
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

For more information, go to Goomba - The Official Site at
http://goomba.bornonapirateship.com/
or my own
http://hem.passagen.se/flubba/gba.html

! Thank you:
-=-=-=-=-=-=-
Red Mage - page hosting, testing
newbie and the nation of Japan - Goomba Front, testing
MarkUK - testing
Markus Oberhumer - LZO compression library
Jeff Frohwein - MBV2
Neal Tew - For PocketNES
Forgotten - For VisualBoy(Advance)

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Fredrik Olsson
flubba@passagen.se
http://hem.passagen.se/flubba/gba.html
