grammar Boss;
r : ID EQUAL Expr EOI;

//Expresia 
Expr : Sum ;

// functia suma
Sum : Sub '+' Sum 
	| Sub
	;

//functia diferenta	
Sub : Mul '-' Sub 
	| Mul
	;

//functia inmultire
Mul : Div '*' Mul 
	| Div
	;

//functia impartire	
Div : Exp '/' Div 
	| Exp
	;

//functia exponentiala
Exp : Pri '^' Exp 
	| Pri
	;

//prioritizarea in functie de paranteza
Pri : INT
	| '('Sum')' 
	;

//definirea variabilei
ID : [a-zA-Z]+ ;

//separatorul variabilei de expresie 
EQUAL : ' = ' ;

//definirea numerelor
INT : [0-9]+ ;

//Sfarsitul inputului
EOI : ' $$' ;