# Variables
CROSS_COMPILE ?= gcc   # Cross-compile prefix (set to nothing if not specified)
CC = $(CROSS_COMPILE)  # Compiler (use cross-compiler if CROSS_COMPILE is set)
CFLAGS = -Wall -g      # Compiler flags: show all warnings, and include debug information
TARGET = writer        # Output executable name
SRC = writer.c         # Source file

# Default target: build the program
all: $(TARGET)

# Rule to build the program
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean target: remove the compiled files
clean:
	rm -f $(TARGET)
	rm -f *.o

# PHONY prevents make from considering 'clean' as a file
.PHONY: clean
