# Create the Make rules for NES-EX
#
CXX=g++
CXXFLAGS=-Wall -W -pedantic -Ofast -std=c++0x
CXXFLAGS += `pkg-config sdl --libs --cflags`

nes-ex: nes-ex.o
	$(CXX) -o "$@" "$<" $(CXXFLAGS)

nes-ex.o: nes-ex.cc
	$(CXX) -c -o "$@" "$<" $(CXXFLAGS)


