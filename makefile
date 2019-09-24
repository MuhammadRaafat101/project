vpath %.c ./Src
vpath %.h ./Inc

#define some variables
INCLUDE_PATH = ./Inc
SOURCE_PATH = ./Src
cc=gcc
LINK_TARGET = app.exe
CLEAN_TARGET =$(LINK_TARGET) $(OBJECTS) $(deps)
#get all the .c files in the source path 
SOURCES = $(subst $(SOURCE_PATH)/,,$(wildcard $(SOURCE_PATH)/*.c))

#get all the object files 
OBJECTS = $(SOURCES:.c=.o)

#generate the executable file
app.exe : $(OBJECTS)
	$(cc) $^ Nasser_MinaMedhat_Yakkob_Rafat.o -o $@
	
#convert every .c to an object file 
%.o : %.c
	$(cc) -c -I$(INCLUDE_PATH) $< -o $@

#clear
clear : 
	rm $(CLEAN_TARGET)



all : $(LINK_TARGET)
