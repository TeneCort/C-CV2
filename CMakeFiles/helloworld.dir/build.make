# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/ioannis/Bureau/C++test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ioannis/Bureau/C++test

# Include any dependencies generated for this target.
include CMakeFiles/helloworld.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/helloworld.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/helloworld.dir/flags.make

CMakeFiles/helloworld.dir/helloworld.cpp.o: CMakeFiles/helloworld.dir/flags.make
CMakeFiles/helloworld.dir/helloworld.cpp.o: helloworld.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ioannis/Bureau/C++test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/helloworld.dir/helloworld.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/helloworld.dir/helloworld.cpp.o -c /home/ioannis/Bureau/C++test/helloworld.cpp

CMakeFiles/helloworld.dir/helloworld.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/helloworld.dir/helloworld.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ioannis/Bureau/C++test/helloworld.cpp > CMakeFiles/helloworld.dir/helloworld.cpp.i

CMakeFiles/helloworld.dir/helloworld.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/helloworld.dir/helloworld.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ioannis/Bureau/C++test/helloworld.cpp -o CMakeFiles/helloworld.dir/helloworld.cpp.s

# Object files for target helloworld
helloworld_OBJECTS = \
"CMakeFiles/helloworld.dir/helloworld.cpp.o"

# External object files for target helloworld
helloworld_EXTERNAL_OBJECTS =

helloworld: CMakeFiles/helloworld.dir/helloworld.cpp.o
helloworld: CMakeFiles/helloworld.dir/build.make
helloworld: /usr/local/lib/libopencv_dnn.so.4.5.0
helloworld: /usr/local/lib/libopencv_gapi.so.4.5.0
helloworld: /usr/local/lib/libopencv_highgui.so.4.5.0
helloworld: /usr/local/lib/libopencv_ml.so.4.5.0
helloworld: /usr/local/lib/libopencv_objdetect.so.4.5.0
helloworld: /usr/local/lib/libopencv_photo.so.4.5.0
helloworld: /usr/local/lib/libopencv_stitching.so.4.5.0
helloworld: /usr/local/lib/libopencv_video.so.4.5.0
helloworld: /usr/local/lib/libopencv_videoio.so.4.5.0
helloworld: /usr/local/lib/libopencv_imgcodecs.so.4.5.0
helloworld: /usr/local/lib/libopencv_calib3d.so.4.5.0
helloworld: /usr/local/lib/libopencv_features2d.so.4.5.0
helloworld: /usr/local/lib/libopencv_flann.so.4.5.0
helloworld: /usr/local/lib/libopencv_imgproc.so.4.5.0
helloworld: /usr/local/lib/libopencv_core.so.4.5.0
helloworld: CMakeFiles/helloworld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ioannis/Bureau/C++test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable helloworld"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/helloworld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/helloworld.dir/build: helloworld

.PHONY : CMakeFiles/helloworld.dir/build

CMakeFiles/helloworld.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/helloworld.dir/cmake_clean.cmake
.PHONY : CMakeFiles/helloworld.dir/clean

CMakeFiles/helloworld.dir/depend:
	cd /home/ioannis/Bureau/C++test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ioannis/Bureau/C++test /home/ioannis/Bureau/C++test /home/ioannis/Bureau/C++test /home/ioannis/Bureau/C++test /home/ioannis/Bureau/C++test/CMakeFiles/helloworld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/helloworld.dir/depend

