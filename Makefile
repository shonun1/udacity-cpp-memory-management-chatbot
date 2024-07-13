.PHONY: format clean build run all

TARGET = membot

all: format clean build run

format:
	clang-format -i -style=Google src/*.cpp src/*.h

clean:
	rm -rf build

build:
	mkdir -p build
	cd build && cmake .. && make

run: build
	cd build && ./$(TARGET)

clean-build: clean build
