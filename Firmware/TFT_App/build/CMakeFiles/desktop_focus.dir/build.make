# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build

# Include any dependencies generated for this target.
include CMakeFiles/desktop_focus.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/desktop_focus.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/desktop_focus.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/desktop_focus.dir/flags.make

CMakeFiles/desktop_focus.dir/src/main.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/src/main.c.o: ../src/main.c
CMakeFiles/desktop_focus.dir/src/main.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/desktop_focus.dir/src/main.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/src/main.c.o -MF CMakeFiles/desktop_focus.dir/src/main.c.o.d -o CMakeFiles/desktop_focus.dir/src/main.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/src/main.c

CMakeFiles/desktop_focus.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/src/main.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/src/main.c > CMakeFiles/desktop_focus.dir/src/main.c.i

CMakeFiles/desktop_focus.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/src/main.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/src/main.c -o CMakeFiles/desktop_focus.dir/src/main.c.s

CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o: ../src/tft_lcd.c
CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o -MF CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o.d -o CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/src/tft_lcd.c

CMakeFiles/desktop_focus.dir/src/tft_lcd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/src/tft_lcd.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/src/tft_lcd.c > CMakeFiles/desktop_focus.dir/src/tft_lcd.c.i

CMakeFiles/desktop_focus.dir/src/tft_lcd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/src/tft_lcd.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/src/tft_lcd.c -o CMakeFiles/desktop_focus.dir/src/tft_lcd.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o: ../lib/Fonts/font12.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font12.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font12.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font12.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o: ../lib/Fonts/font12CN.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font12CN.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font12CN.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font12CN.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o: ../lib/Fonts/font16.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font16.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font16.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font16.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o: ../lib/Fonts/font20.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font20.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font20.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font20.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o: ../lib/Fonts/font24.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font24.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font24.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font24.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o: ../lib/Fonts/font24CN.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font24CN.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font24CN.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font24CN.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o: ../lib/Fonts/font48.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font48.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font48.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font48.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o: ../lib/Fonts/font50.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font50.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font50.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font50.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.s

CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o: ../lib/Fonts/font8.c
CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o -MF CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o.d -o CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font8.c

CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font8.c > CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.i

CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/Fonts/font8.c -o CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.s

CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o: ../lib/GUI/GUI_BMP.c
CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o -MF CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o.d -o CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/GUI/GUI_BMP.c

CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/GUI/GUI_BMP.c > CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.i

CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/GUI/GUI_BMP.c -o CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.s

CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o: CMakeFiles/desktop_focus.dir/flags.make
CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o: ../lib/GUI/GUI_Paint.c
CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o: CMakeFiles/desktop_focus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o -MF CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o.d -o CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o -c /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/GUI/GUI_Paint.c

CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.i"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/GUI/GUI_Paint.c > CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.i

CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.s"
	/home/donge/WorkSpace/tools/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/lib/GUI/GUI_Paint.c -o CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.s

# Object files for target desktop_focus
desktop_focus_OBJECTS = \
"CMakeFiles/desktop_focus.dir/src/main.c.o" \
"CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o" \
"CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o" \
"CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o" \
"CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o"

# External object files for target desktop_focus
desktop_focus_EXTERNAL_OBJECTS =

desktop_focus: CMakeFiles/desktop_focus.dir/src/main.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/src/tft_lcd.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font12.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font12CN.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font16.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font20.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font24.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font24CN.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font48.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font50.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/Fonts/font8.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/GUI/GUI_BMP.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/lib/GUI/GUI_Paint.c.o
desktop_focus: CMakeFiles/desktop_focus.dir/build.make
desktop_focus: CMakeFiles/desktop_focus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C executable desktop_focus"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/desktop_focus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/desktop_focus.dir/build: desktop_focus
.PHONY : CMakeFiles/desktop_focus.dir/build

CMakeFiles/desktop_focus.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/desktop_focus.dir/cmake_clean.cmake
.PHONY : CMakeFiles/desktop_focus.dir/clean

CMakeFiles/desktop_focus.dir/depend:
	cd /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build /home/donge/WorkSpace/Program/Desktop_focus/Firmware/TFT_App/build/CMakeFiles/desktop_focus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/desktop_focus.dir/depend

