ASMC = nasm
ASM_FLAGS = -felf64 -g

LL = ld

SRC_DIR = src
OBJ_DIR = obj
LIB_DIR = lib

SRC_SET = main
LIB_SET = convert math print string

TARGET = gaztreat

all: clean build run

build: $(TARGET)

$(TARGET): objects 
	$(LL) $(wildcard $(OBJ_DIR)/*) -o $(TARGET)

objects:
	$(foreach src, $(SRC_SET), $(ASMC) $(ASM_FLAGS) $(SRC_DIR)/$(src).asm -o $(OBJ_DIR)/$(src).o;)
	$(foreach lib, $(LIB_SET), $(ASMC) $(ASM_FLAGS) $(LIB_DIR)/$(lib).asm -o $(OBJ_DIR)/$(lib).o;)

run:
	./$(TARGET)


clean:
	-rm -f $(TARGET)
	-rm -f $(OBJ_DIR)/*

