# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/adamcook/Desktop/CS236/Project-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Project_1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Project_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Project_1.dir/flags.make

CMakeFiles/Project_1.dir/ColonAutomaton.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/ColonAutomaton.cpp.o: ../ColonAutomaton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Project_1.dir/ColonAutomaton.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/ColonAutomaton.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/ColonAutomaton.cpp

CMakeFiles/Project_1.dir/ColonAutomaton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/ColonAutomaton.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/ColonAutomaton.cpp > CMakeFiles/Project_1.dir/ColonAutomaton.cpp.i

CMakeFiles/Project_1.dir/ColonAutomaton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/ColonAutomaton.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/ColonAutomaton.cpp -o CMakeFiles/Project_1.dir/ColonAutomaton.cpp.s

CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.o: ../ColonDashAutomaton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/ColonDashAutomaton.cpp

CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/ColonDashAutomaton.cpp > CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.i

CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/ColonDashAutomaton.cpp -o CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.s

CMakeFiles/Project_1.dir/Lexer.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/Lexer.cpp.o: ../Lexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Project_1.dir/Lexer.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/Lexer.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/Lexer.cpp

CMakeFiles/Project_1.dir/Lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/Lexer.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/Lexer.cpp > CMakeFiles/Project_1.dir/Lexer.cpp.i

CMakeFiles/Project_1.dir/Lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/Lexer.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/Lexer.cpp -o CMakeFiles/Project_1.dir/Lexer.cpp.s

CMakeFiles/Project_1.dir/Token.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/Token.cpp.o: ../Token.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Project_1.dir/Token.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/Token.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/Token.cpp

CMakeFiles/Project_1.dir/Token.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/Token.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/Token.cpp > CMakeFiles/Project_1.dir/Token.cpp.i

CMakeFiles/Project_1.dir/Token.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/Token.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/Token.cpp -o CMakeFiles/Project_1.dir/Token.cpp.s

CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.o: ../MatcherAutomaton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/MatcherAutomaton.cpp

CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/MatcherAutomaton.cpp > CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.i

CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/MatcherAutomaton.cpp -o CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.s

CMakeFiles/Project_1.dir/StringAutomaton.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/StringAutomaton.cpp.o: ../StringAutomaton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Project_1.dir/StringAutomaton.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/StringAutomaton.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/StringAutomaton.cpp

CMakeFiles/Project_1.dir/StringAutomaton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/StringAutomaton.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/StringAutomaton.cpp > CMakeFiles/Project_1.dir/StringAutomaton.cpp.i

CMakeFiles/Project_1.dir/StringAutomaton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/StringAutomaton.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/StringAutomaton.cpp -o CMakeFiles/Project_1.dir/StringAutomaton.cpp.s

CMakeFiles/Project_1.dir/IDAutomaton.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/IDAutomaton.cpp.o: ../IDAutomaton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Project_1.dir/IDAutomaton.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/IDAutomaton.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/IDAutomaton.cpp

CMakeFiles/Project_1.dir/IDAutomaton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/IDAutomaton.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/IDAutomaton.cpp > CMakeFiles/Project_1.dir/IDAutomaton.cpp.i

CMakeFiles/Project_1.dir/IDAutomaton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/IDAutomaton.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/IDAutomaton.cpp -o CMakeFiles/Project_1.dir/IDAutomaton.cpp.s

CMakeFiles/Project_1.dir/UndefinedString.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/UndefinedString.cpp.o: ../UndefinedString.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Project_1.dir/UndefinedString.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/UndefinedString.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/UndefinedString.cpp

CMakeFiles/Project_1.dir/UndefinedString.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/UndefinedString.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/UndefinedString.cpp > CMakeFiles/Project_1.dir/UndefinedString.cpp.i

CMakeFiles/Project_1.dir/UndefinedString.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/UndefinedString.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/UndefinedString.cpp -o CMakeFiles/Project_1.dir/UndefinedString.cpp.s

CMakeFiles/Project_1.dir/CommentAutomata.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/CommentAutomata.cpp.o: ../CommentAutomata.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Project_1.dir/CommentAutomata.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/CommentAutomata.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/CommentAutomata.cpp

CMakeFiles/Project_1.dir/CommentAutomata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/CommentAutomata.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/CommentAutomata.cpp > CMakeFiles/Project_1.dir/CommentAutomata.cpp.i

CMakeFiles/Project_1.dir/CommentAutomata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/CommentAutomata.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/CommentAutomata.cpp -o CMakeFiles/Project_1.dir/CommentAutomata.cpp.s

CMakeFiles/Project_1.dir/main.cpp.o: CMakeFiles/Project_1.dir/flags.make
CMakeFiles/Project_1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Project_1.dir/main.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Project_1.dir/main.cpp.o -c /Users/adamcook/Desktop/CS236/Project-1/main.cpp

CMakeFiles/Project_1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_1.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamcook/Desktop/CS236/Project-1/main.cpp > CMakeFiles/Project_1.dir/main.cpp.i

CMakeFiles/Project_1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_1.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamcook/Desktop/CS236/Project-1/main.cpp -o CMakeFiles/Project_1.dir/main.cpp.s

# Object files for target Project_1
Project_1_OBJECTS = \
"CMakeFiles/Project_1.dir/ColonAutomaton.cpp.o" \
"CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.o" \
"CMakeFiles/Project_1.dir/Lexer.cpp.o" \
"CMakeFiles/Project_1.dir/Token.cpp.o" \
"CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.o" \
"CMakeFiles/Project_1.dir/StringAutomaton.cpp.o" \
"CMakeFiles/Project_1.dir/IDAutomaton.cpp.o" \
"CMakeFiles/Project_1.dir/UndefinedString.cpp.o" \
"CMakeFiles/Project_1.dir/CommentAutomata.cpp.o" \
"CMakeFiles/Project_1.dir/main.cpp.o"

# External object files for target Project_1
Project_1_EXTERNAL_OBJECTS =

Project_1: CMakeFiles/Project_1.dir/ColonAutomaton.cpp.o
Project_1: CMakeFiles/Project_1.dir/ColonDashAutomaton.cpp.o
Project_1: CMakeFiles/Project_1.dir/Lexer.cpp.o
Project_1: CMakeFiles/Project_1.dir/Token.cpp.o
Project_1: CMakeFiles/Project_1.dir/MatcherAutomaton.cpp.o
Project_1: CMakeFiles/Project_1.dir/StringAutomaton.cpp.o
Project_1: CMakeFiles/Project_1.dir/IDAutomaton.cpp.o
Project_1: CMakeFiles/Project_1.dir/UndefinedString.cpp.o
Project_1: CMakeFiles/Project_1.dir/CommentAutomata.cpp.o
Project_1: CMakeFiles/Project_1.dir/main.cpp.o
Project_1: CMakeFiles/Project_1.dir/build.make
Project_1: CMakeFiles/Project_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable Project_1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Project_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Project_1.dir/build: Project_1

.PHONY : CMakeFiles/Project_1.dir/build

CMakeFiles/Project_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Project_1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Project_1.dir/clean

CMakeFiles/Project_1.dir/depend:
	cd /Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/adamcook/Desktop/CS236/Project-1 /Users/adamcook/Desktop/CS236/Project-1 /Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug /Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug /Users/adamcook/Desktop/CS236/Project-1/cmake-build-debug/CMakeFiles/Project_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Project_1.dir/depend
