# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stefan/dcdc-usb/libusb1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefan/dcdc-usb/libusb1/build

# Include any dependencies generated for this target.
include dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/depend.make

# Include the progress variables for this target.
include dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/progress.make

# Include the compile flags for this target's objects.
include dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/flags.make

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o: dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/flags.make
dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o: ../dcdc-usb/sources/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefan/dcdc-usb/libusb1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o"
	cd /home/stefan/dcdc-usb/libusb1/build/dcdc-usb/sources && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dcdc-usb_app.dir/main.c.o   -c /home/stefan/dcdc-usb/libusb1/dcdc-usb/sources/main.c

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dcdc-usb_app.dir/main.c.i"
	cd /home/stefan/dcdc-usb/libusb1/build/dcdc-usb/sources && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefan/dcdc-usb/libusb1/dcdc-usb/sources/main.c > CMakeFiles/dcdc-usb_app.dir/main.c.i

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dcdc-usb_app.dir/main.c.s"
	cd /home/stefan/dcdc-usb/libusb1/build/dcdc-usb/sources && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefan/dcdc-usb/libusb1/dcdc-usb/sources/main.c -o CMakeFiles/dcdc-usb_app.dir/main.c.s

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.requires:

.PHONY : dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.requires

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.provides: dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.requires
	$(MAKE) -f dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/build.make dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.provides.build
.PHONY : dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.provides

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.provides.build: dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o


# Object files for target dcdc-usb_app
dcdc__usb_app_OBJECTS = \
"CMakeFiles/dcdc-usb_app.dir/main.c.o"

# External object files for target dcdc-usb_app
dcdc__usb_app_EXTERNAL_OBJECTS =

dcdc-usb_app: dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o
dcdc-usb_app: dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/build.make
dcdc-usb_app: libdcdc-usb/sources/libdcdc-usb.a
dcdc-usb_app: dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefan/dcdc-usb/libusb1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../dcdc-usb_app"
	cd /home/stefan/dcdc-usb/libusb1/build/dcdc-usb/sources && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dcdc-usb_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/build: dcdc-usb_app

.PHONY : dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/build

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/requires: dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/main.c.o.requires

.PHONY : dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/requires

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/clean:
	cd /home/stefan/dcdc-usb/libusb1/build/dcdc-usb/sources && $(CMAKE_COMMAND) -P CMakeFiles/dcdc-usb_app.dir/cmake_clean.cmake
.PHONY : dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/clean

dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/depend:
	cd /home/stefan/dcdc-usb/libusb1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefan/dcdc-usb/libusb1 /home/stefan/dcdc-usb/libusb1/dcdc-usb/sources /home/stefan/dcdc-usb/libusb1/build /home/stefan/dcdc-usb/libusb1/build/dcdc-usb/sources /home/stefan/dcdc-usb/libusb1/build/dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dcdc-usb/sources/CMakeFiles/dcdc-usb_app.dir/depend
