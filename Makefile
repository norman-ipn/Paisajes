EXPRESION="(a|b)"
run  
run:regex2nfa 
	./regex2nfa $(EXPRESION)
regex2nfa:main.c regex2nfa.c nfa.c list.c
	gcc -std=c99 -o regex2nfa main.c regex2nfa.c nfa.c list.c
atm.dot:regex2nfa
	./regex2nfa $(EXPRESION) > atm.dot
atm.png:atm.dot
	dot atm.dot -Tpng -o atm.png
clean:
	rm regex2nfa
	rm atm.dot
	rm atm.png
ver:atm.png
	eog atm.png
