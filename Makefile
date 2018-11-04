CC = g++
PROGRAMME = MINIMAX  
CCFLAGS = -Wall -g
HEADERS = minimax.h 
SOURCES = main.cpp minimax.cpp game.cpp 
OBJ = $(SOURCES:.cpp=.o)
RM=rm 
all: $(PROGRAMME)
$(PROGRAMME):$(OBJ)
	$(CC) $(OBJ) $(CCFLAGS) -o $(PROGRAMME)
%.o: %.cpp 
	$(CC) $(CCFLAGS) -c $< -o $@
clean:
	$(RM) -r ./$(PROGRAMME) ./*~ ./$(OBJ)
