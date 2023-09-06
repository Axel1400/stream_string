CC ?= gcc 

APP_NAME = string_test
OBJ_FILES = string_test.o
LIBS = .

all: $(APP_NAME)

$(APP_NAME): $(OBJ_FILES)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -o $@ -c $^ -g


clean:
	rm *.o $(APP_NAME)