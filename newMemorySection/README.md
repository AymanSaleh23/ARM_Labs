# Task Solution.

## Task1 Add Memory Section in custom location.

### ARM Cortex-4 is used just install GNU compiler (perfere to download a generic one to your macine)

### Recommend:

https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-mingw-w64-i686-arm-none-eabi.zip

### Many GNU compilers at this link:

https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/downloads

### Folow Steps:
1. Download a suitable compiler.
2. Add (/bin) to your system environment variables (system variables -> path -> add -> <copyPath>/bin).
3. open terminal from task folder.
4. run this commnad in terminal 
  > arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -save-temps -nostdlib -O0 -Wl,-Map,"mapFile.map" -Wl,-T"lnkscript.lds" main.c
5. Notice the new created files, Open files via any text editor (notepad++).
  
 #### Parameters:
  
    -mcpu: Tells the tool chain to compile the file for a specific Processor.
  
    -march: Tells the tool chain that this processor uses that archieture.
  
    -mthumb: Tells the tool chain to use the Thump instruction set.
  
    -save-temps: Tells the tool chain to save all generated files after each builbing process stage (preprocessing, compiling, assembling, linking).
  
    -O0: Tells the tool chain to use level 0 of optimization.
  
    -Wl,-Map,"mapFile.map": Tells the tool chain to generate a map file with name "mapFile".
  
    -Wl,-T"lnkscript.lds": Tells the tool chain to use a linker Skript named "lnkscript" in the current terminal path.
### For more details read this file
  https://docs.google.com/document/d/1YzEUeByG-AIacsBNMbWVFhmvYe_tC392Ple_sIwWyrU/edit?usp=sharing
