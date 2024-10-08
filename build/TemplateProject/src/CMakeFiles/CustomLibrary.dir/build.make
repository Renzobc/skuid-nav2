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
CMAKE_SOURCE_DIR = /workspaces/skuid-nav2/project_folder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/skuid-nav2/build/TemplateProject

# Include any dependencies generated for this target.
include src/CMakeFiles/CustomLibrary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/CustomLibrary.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/CustomLibrary.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/CustomLibrary.dir/flags.make

src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o: src/CMakeFiles/CustomLibrary.dir/flags.make
src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o: /workspaces/skuid-nav2/project_folder/src/subfolder/source.cpp
src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o: src/CMakeFiles/CustomLibrary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/skuid-nav2/build/TemplateProject/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o"
	cd /workspaces/skuid-nav2/build/TemplateProject/src && $(CMAKE_COMMAND) -E __run_co_compile --tidy="clang-tidy;--extra-arg-before=--driver-mode=g++" --source=/workspaces/skuid-nav2/project_folder/src/subfolder/source.cpp -- /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o -MF CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o.d -o CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o -c /workspaces/skuid-nav2/project_folder/src/subfolder/source.cpp

src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.i"
	cd /workspaces/skuid-nav2/build/TemplateProject/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/skuid-nav2/project_folder/src/subfolder/source.cpp > CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.i

src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.s"
	cd /workspaces/skuid-nav2/build/TemplateProject/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/skuid-nav2/project_folder/src/subfolder/source.cpp -o CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.s

# Object files for target CustomLibrary
CustomLibrary_OBJECTS = \
"CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o"

# External object files for target CustomLibrary
CustomLibrary_EXTERNAL_OBJECTS =

src/libCustomLibrary.a: src/CMakeFiles/CustomLibrary.dir/subfolder/source.cpp.o
src/libCustomLibrary.a: src/CMakeFiles/CustomLibrary.dir/build.make
src/libCustomLibrary.a: src/CMakeFiles/CustomLibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/skuid-nav2/build/TemplateProject/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libCustomLibrary.a"
	cd /workspaces/skuid-nav2/build/TemplateProject/src && $(CMAKE_COMMAND) -P CMakeFiles/CustomLibrary.dir/cmake_clean_target.cmake
	cd /workspaces/skuid-nav2/build/TemplateProject/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CustomLibrary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/CustomLibrary.dir/build: src/libCustomLibrary.a
.PHONY : src/CMakeFiles/CustomLibrary.dir/build

src/CMakeFiles/CustomLibrary.dir/clean:
	cd /workspaces/skuid-nav2/build/TemplateProject/src && $(CMAKE_COMMAND) -P CMakeFiles/CustomLibrary.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/CustomLibrary.dir/clean

src/CMakeFiles/CustomLibrary.dir/depend:
	cd /workspaces/skuid-nav2/build/TemplateProject && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/skuid-nav2/project_folder /workspaces/skuid-nav2/project_folder/src /workspaces/skuid-nav2/build/TemplateProject /workspaces/skuid-nav2/build/TemplateProject/src /workspaces/skuid-nav2/build/TemplateProject/src/CMakeFiles/CustomLibrary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/CustomLibrary.dir/depend

