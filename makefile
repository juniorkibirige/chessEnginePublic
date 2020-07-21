OBJECT_FILES = \
		jarvaang.o \
		init.o \
		helpers/bitboards.o \
		helpers/hashkeys.o \
		helpers/board.o \
		helpers/data.o \
		helpers/attack.o \
		helpers/io.o \
		moves/movegen.o \
		helpers/validate.o \
		moves/makemove.o \
		tests/perft.o \
		search/search.o \
		helpers/misc.o \
		search/evaluate.o \
		search/pvtable.o \
		gui/uci.o \
		gui/xboard.o \
		polybooks/polybook.o \
		polybooks/polykeys.o \

all: jarvis

jarvis: $(OBJECT_FILES)
	gcc -O2 -o jarvis $(OBJECT_FILES)

%.o: %.c definitions/defs.h polybooks/polykeys.h
	gcc -O2 -x c -c $< -o $@

clean:
	rm -f */*.o
	rm -f *.o
	rm -f jarvis