all: s21_cat

s21_cat: s21_cat.o
	gcc -Wall -Werror -Wextra -std=c11 -pedantic s21_cat.o -o s21_cat

s21_cat.o: s21_cat.c
	gcc -Wall -Werror -Wextra -std=c11 -pedantic -c s21_cat.c

clean:
	rm -rf *.o *.out s21_cat log.txt

style:
	clang-format -n -Werror s21_cat.c s21_cat.h

test: s21_cat
	sudo -s bash t_cat.sh

rebuild: clean all