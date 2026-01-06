CC = gcc
CFLAGS = -Wall -Wextra -mconsole -I math_lib/inc

SRC = main.c math_lib/src/math_lib.c
OBJ = $(SRC:%.c=build/%.o)

OUT = build/app.exe

all: $(OUT)

$(OUT): $(OBJ)
	$(CC) $(OBJ) -o $(OUT)

build/%.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf build
