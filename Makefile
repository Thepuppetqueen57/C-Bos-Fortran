all: build run clean

build:
	@gfortran -o C-Bos main.f90

run:
	@./C-Bos

clean:
	@rm C-Bos