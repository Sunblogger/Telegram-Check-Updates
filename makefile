# Makefile for telegram_check_updates
# Date: 23.04.2021
CXXFLAGS = -g -O2 -I/home/pi/cpp_sources -Wall -Wextra -std=c++17 -lcurl -ljsoncpp
	
telegram_check_updates:	telegram_check_updates.o /home/pi/cpp_sources/stopfile.o /home/pi/cpp_sources/logfile.o
	g++ $(CXXFLAGS) /home/pi/cpp_sources/stopfile.o /home/pi/cpp_sources/logfile.o telegram_check_updates.cpp -o telegram_check_updates -lstdc++fs
	
stopfile.o: /home/pi/cpp_sources/stopfile.cpp /home/pi/cpp_sources/stopfile.hpp
	g++ $(CXXFLAGS) -c /home/pi/cpp_sources/stopfile.cpp -o /home/pi/cpp_sources/stopfile.o -lstdc++fs

logfile.o: /home/pi/cpp_sources/logfile.cpp /home/pi/cpp_sources/logfile.hpp
	g++ $(CXXFLAGS) -c /home/pi/cpp_sources/logfile.cpp -o /home/pi/cpp_sources/logfile.o -lstdc++fs
