# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.0.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.0.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jerry/projects/test/cpp/asio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jerry/projects/test/cpp/asio/build

# Include any dependencies generated for this target.
include CMakeFiles/timer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/timer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/timer.dir/flags.make

CMakeFiles/timer.dir/timer.cpp.o: CMakeFiles/timer.dir/flags.make
CMakeFiles/timer.dir/timer.cpp.o: ../timer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/jerry/projects/test/cpp/asio/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/timer.dir/timer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/timer.dir/timer.cpp.o -c /Users/jerry/projects/test/cpp/asio/timer.cpp

CMakeFiles/timer.dir/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timer.dir/timer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/jerry/projects/test/cpp/asio/timer.cpp > CMakeFiles/timer.dir/timer.cpp.i

CMakeFiles/timer.dir/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timer.dir/timer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/jerry/projects/test/cpp/asio/timer.cpp -o CMakeFiles/timer.dir/timer.cpp.s

CMakeFiles/timer.dir/timer.cpp.o.requires:
.PHONY : CMakeFiles/timer.dir/timer.cpp.o.requires

CMakeFiles/timer.dir/timer.cpp.o.provides: CMakeFiles/timer.dir/timer.cpp.o.requires
	$(MAKE) -f CMakeFiles/timer.dir/build.make CMakeFiles/timer.dir/timer.cpp.o.provides.build
.PHONY : CMakeFiles/timer.dir/timer.cpp.o.provides

CMakeFiles/timer.dir/timer.cpp.o.provides.build: CMakeFiles/timer.dir/timer.cpp.o

# Object files for target timer
timer_OBJECTS = \
"CMakeFiles/timer.dir/timer.cpp.o"

# External object files for target timer
timer_EXTERNAL_OBJECTS =

timer: CMakeFiles/timer.dir/timer.cpp.o
timer: CMakeFiles/timer.dir/build.make
timer: /usr/local/lib/libboost_system.a
timer: CMakeFiles/timer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable timer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/timer.dir/build: timer
.PHONY : CMakeFiles/timer.dir/build

CMakeFiles/timer.dir/requires: CMakeFiles/timer.dir/timer.cpp.o.requires
.PHONY : CMakeFiles/timer.dir/requires

CMakeFiles/timer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/timer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/timer.dir/clean

CMakeFiles/timer.dir/depend:
	cd /Users/jerry/projects/test/cpp/asio/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jerry/projects/test/cpp/asio /Users/jerry/projects/test/cpp/asio /Users/jerry/projects/test/cpp/asio/build /Users/jerry/projects/test/cpp/asio/build /Users/jerry/projects/test/cpp/asio/build/CMakeFiles/timer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/timer.dir/depend

