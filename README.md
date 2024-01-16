# Introduction

The bacterial vat is a GregTech multiblock that outputs varying levels of fluid depending on the capacity of the output hatch. More specifically, the bacterial vat obtains maximum efficiency (1001x of BOTH input and output fluid) when the output hatch is exactly half full. While it is possible to accomplish this with just a fluid detector cover and a conduit/pump, it may be a little slow and is difficult to guarantee that the output hatch will be exactly half full every single time. These lua scripts, however, are designed to always pull the perfect amount of fluid from the output hatch almost immediately to keep the bacterial vat constantly running at maximum efficiency.

# Bare Minimum Components

There is not a significant gate to any of these components since they're very cheap and the player should have access to them by the time they actually need a bacterial vat. The RITEG upgrade is simply for power and is not entirely necessary. Another option would be to connect an AE2 cable directly to the microcontroller.

- OC Electronics Assembler
- Tier 2 Microcontroller Case
- Tier 1 Central Processing Unit
- Tier 1 Memory
- Tier 1 Redstone Card
- Transposer
- RITEG Upgrade
- EEPROM

![Microcontroller Components](media/Microcontroller_Components.png?)

Lastly, you need another computer in order to flash the EEPROM with the code for the bacterial vat. The only requirement for this additional computer is that OpenOS needs to be installed. A sample list of components is provided below if you are unfamiliar with Open Computers. Shift-click all of them into a computer case (except for the keyboard which should be placed on top and a screen that should be connected via cables). Power the computer by connecting it directly to any GT cable and follow the commands on screen ("install" --> "Y" --> "Y") to complete the setup.

- Tier 3 Computer Case
- Tier 1.5 Memory
- Tier 1 Central Processing Unit
- Tier 1 Graphics Card
- Tier 1 Hard Disk Drive
- Tier 1 Screen
- Keyboard
- EEPROM (Lua BIOS)
- OpenOS Floppy Disk 

# Building the Microcontroller
1. In the computer, type the following to create a file called bacvat.lua

        edit bacvat.lua

2. Copy the lines of code from the bacvat.lua in this repository to the new file on the computer (middle-click to paste). Save with Ctrl+S and close with Ctrl+W.
3. Take the EEPROM (Lua BIOS) out of the computer and insert a blank EEPROM. Type the following to flash this new EEPROM with the code in bacvat.lua. It will ask you to confirm the operation and provide a label which can be anything.

        flash bacvat.lua

4. Insert the microcontroller case into the OC Electronics Assembler which can be powered directly by any GT cable.
5. Shift-click all of the components (including the flashed EEPROM) into the microcontroller case and click assemble.

# Running the Program
The assembled microcontroller should be placed directly underneath the output hatch of the bacterial vat(s). The hatch can be any size so long as it there is enough room to hold all of the fluid from a single operation. Right-click the microcontroller to turn it on. Place a large fluid storage (or dual interface) underneath the microcontroller to store all of the output fluid. On one of the sides of the microcontroller, place a redstone timer set to the length of the recipe itself. If multiple setups are being used, it is recommended to have the redstone timer feed into either a redstone P2P tunnel or wireless redstone transmitter to output to all microcontrollers simultaneously. The redstone signal from the timer briefly turns on the microcontroller(s) which will first lower the output hatch to exactly half full and then output its own redstone signal to tell the bacterial vat(s) to turn on. Simply attach a machine controller cover set to ENABLE WITH REDSTONE to the bacterial vat(s) and run a red alloy wire to the sides of the microcontroller. The setup below controls four bacterial vats all sharing the same output hatch.

![setup](media/Setup.png?)
