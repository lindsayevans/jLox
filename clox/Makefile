CC = clang
GCC_FLAGS = -Wall
LDFLAGS = 
SRC_DIR = src
BUILD_DIR = bin
EXE = $(BUILD_DIR)/clox

SRCS = $(shell find $(SRC_DIR) -name '*.c')
OBJS = $(subst $(SRC_DIR), $(BUILD_DIR), $(SRCS:.c=.o))

all: GCC_FLAGS += -O3
all: $(OBJS) $(EXE)

debug: GCC_FLAGS += -DDEBUG -g -O1
debug: $(EXE)

$(EXE): $(OBJS) | $(BUILD_DIR)
	$(CC) $(GCC_FLAGS) -o $(EXE) $(LDFLAGS) $(OBJS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(GCC_FLAGS) -c -o $@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/util:
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)/*
