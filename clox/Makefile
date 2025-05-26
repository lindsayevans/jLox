CC = clang
GCC_FLAGS = -Wall -Wextra -Wno-unused-parameter -Wdouble-promotion -Wconversion -Wno-sign-conversion -fsanitize=address,undefined
LDFLAGS = 
SRC_DIR = src
BUILD_DIR = bin
EXE = $(BUILD_DIR)/clox

SRCS = $(shell find $(SRC_DIR) -name '*.c')
HDRS = $(shell find $(SRC_DIR) -name '*.h')
OBJS = $(subst $(SRC_DIR), $(BUILD_DIR), $(SRCS:.c=.o))

all: GCC_FLAGS += -O3
all: $(BUILD_DIR) $(OBJS) $(EXE)

debug: GCC_FLAGS += -DDEBUG -DDEBUG_PRINT_CODE -DDEBUG_TRACE_EXECUTION -g3 -O1
debug: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(GCC_FLAGS) -o $(EXE) $(LDFLAGS) $(OBJS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c $(HDRS)
	$(CC) $(GCC_FLAGS) -c -o $@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)/*
