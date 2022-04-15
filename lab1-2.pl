%lab1
%task1

gifted('Nick','Tom','book').
gifted('Mary','Tom','pen').
gifted('Rick','Mary','toy').
gifted('Bob','Pat','toy').

% a) gifted('Rick','Mary','toy').
% b) gifted('Nick','Tom','toy').
% c) gifted('Mary','Tom',X).
% d) gifted(Y,'Tom',X).
% e) gifted(Y,'Pat','toy').

%task2

parent('Mary','Fedor').
parent('Ivan','Fedor').
parent('Ivan','Stepan').
parent('Fedor','Olga').
parent('Fedor','Tatyana').
gparent(Z):-parent(X,Y),parent(Z,X), write(Y).



% a) parent('Fedor','Tatyana').
% b) parent(X,'Tatyana').
% c) parent('Ivan',X).
% d) parent(X,'Olga'), parent(Y,X).
% e) parent(X,Y), parent('Ivan',X).
% f) parent(X,'Fedor'), parent(X,'Stepan').
% g) parent(X,Y).

%task3

loves('Vladimir','banana').
loves('Sveta','apple').
loves('Sveta','chocolate').
fruits('apple').
fruits('banana').
candyes('chocolate').
lovesFruits(X) :- fruits(Y), loves(X,Y).
notlovesFruits(X):- loves(X,_), not(lovesFruits(X)).

% a) loves(X,'banana').
% b) loves(X,'chocolate'), loves(X,'apple').
% c) loves('Vladimir',X).
% d) loves('Sveta',X), loves('Vladimir',X). 
% e) lovesFruits(X).

%task4

male('Andrew').
male('Sanek').
female('Olga').
playes('Olga','voleyball').
playes('Sanek','voleyball').
playes('Sanek','football').
playes('Andrew','football').
voley_fem(X) :- female(X), playes(X,'voleyball').
voley_m(X) :- male(X), playes(X,'voleyball').

% a) playes('Andrew',X). 
% b) playes(X,'voleyball').
% c) playes('Olga',X),playes('Sanek',X).
% d) playes(X,'voleyball'),playes(X,'football').
% e) voley_fem(X).

%lab2
%task1

event('Global',31,'the first city-states arose').
event('Egypt',30,'formed a single state').
event('Egypt',27,'the first ancient cities were formed').
event('India',27,'the pyramid of Cheops was built').
event('Greece',18,'The first states appeared').
event('Egypt',18,'there was a major uprising of the poor and slaves').
event('China',15,'The first states appeared').
event('Egypt',15,'Thutmose 3rd ruled').
event('Greece',13,'Trojan War').
event('Greece',11,'Invasion of the Borian tribes').
event('Rome',8,'the city of Rome was founded').
event('Greece',8,'The Olympic Games began').
event('Rome',6,'Rome established a republic').
event('Greece',6,'Solons reforms').
event('Babylonia',6,'State capture of Babylon by the Persians').
event('Egypt',6,'The conquest of egypt by the Persians').

% a) event('Greece',X,Y)..
% b) event('Egypt',N,X), N>6.

%task2

river('Amur', 4416, 350, 1855, 'Yablonevyi hrebet', 'Tatarskii proliv').
river('Lena', 4400, 488, 2490, 'Baikalskii hrebet', 'More Laptevyh').
river('Ob', 4070, 400, 2990, 'Predgorya Altaya', 'Karskoe more').
river('Irtysh', 4248, 323, 1643, 'Kitai', 'Ob').
river('Enisei', 3487, 600, 2580, 'Vostochnyi Sayan', 'Karskoe more').
river('Volga', 3530, 255, 1360, 'Valdaiskaya vozvyshennost', 'Kaspiiskoe more').
river('Kolyma', 2129, 44, 643, 'Hrebet Cherskogo', 'Vostochno  sibirskoe more').
river('Ural', 2428, 54, 231, 'Uzhnyi Ural', 'Kaspiiskoe more').
river('Don', 2200, 45, 504, 'Sredne-russkaya vozvyshennost', 'Azovskoe more').
river('Kama', 1805, 130, 507, 'Verhne  Kamskaya vozvyshennost', 'Volga').
river('Pechora', 1809, 130, 322, 'Severnyi Ural', 'Barencevo more').
river('Angara', 1779, 62, 1039, 'Baikal', 'Enisei').
river('Selenga', 1024, 14, 447, 'Mongoliya', 'Baikal').
river('Kuban', 870, 11, 58, 'Kavkaz', 'Azovskoe more').
river('Neva', 74, 42, 281, 'Ladozhskoe ozero', 'Baltiiskoe more').

% a) river(X,_,_,_,_,'Azovskoe more').
% b) river(X,_,_,_,'Valdaiskaya vozvyshennost',_).
% c) river(X,_,_,_,_,'Kaspiiskoe more').
% d) river(RIVER,LENGTH,_,_,_,_),river('Kama',KAMALENGTH,_,_,_,_),LENGTH<KAMALENGTH.
% e) river(RIVER,LENGTH,_,_,_,_),river('Irtysh',IRTYSHLENGTH,_,_,_,_),IRTYSHLENGTH<LENGTH.
% f) river('Ob', LEN, STOK, SQUARE, ISTOK, VPADAET).

male1('John').
male1('Bob').
male1('Hank').
male1('Harry').

female1('Marry').
female1('Ann').

desc('Marry', 'Nice').
desc('John', 'Kind').
desc('John', 'Manly').
desc('John', 'Strong').

desc('Hank', 'Manly').
desc('Bob', 'Rich').
desc('Harry', 'Kind').

female_likes(X,Y) :- female1(X), male1(Y), desc(Y,'Kind'), (male_likes(X,Y);desc(Y,'Strong')).
male_likes(X,Y) :- female1(X), male1(Y), desc(X,'Nice').
happ(X) :- desc(X,'Rich');female_likes(_,X).

% a) happ('John').
% b) female_likes(_,X).

%task4

creature('Muska').
creature('Strelka').
creature('Murka').
creature('Reks').
creature('Drujok').
creature('Muxtar').

human('Anatolii').
human('Nikolai').
human('Ivan').

type('Muska', 'cat').
type('Strelka', 'cat').
type('Murka', 'cat').
type('Reks', 'dog').
type('Drujok', 'dog').
type('Muxtar', 'dog').

colour('Muska', 'brown').
colour('Strelka', 'black').
colour('Murka', 'red').
colour('Reks', 'spotted').
colour('Drujok', 'red').
colour('Muxtar', 'white').

pet(HUMAN, CREATURE):-human(HUMAN), HUMAN='Nikolai', type(CREATURE,'dog'), not(colour(CREATURE,'white')),not(pet('Anatolii',CREATURE)).
pet(HUMAN, CREATURE):-human(HUMAN), HUMAN='Anatolii', (colour(CREATURE,'brown');colour(CREATURE,'black')).
origin(CREATURE):-(pet('Anatolii',CREATURE);pet('Nikolai',CREATURE)).
pet(HUMAN, CREATURE):-human(HUMAN),HUMAN='Ivan',creature(CREATURE),CREATURE='Murka',not(pet('Nikolai','Muska')),not(origin('Muxtar')).
notpet(CREATURE):-creature(CREATURE),not(pet(HUMAN,CREATURE)).

% notpet(X).

%task5

student('Antonov', 5, 5, 5).
student('Bobrov', 5, 3, 2).
student('Vyatkin', 5, 5, 5).
student('Dedov', 4, 4, 4).
student('Emelyanova', 5, 5, 5).
student('Krotov', 2, 3, 3).
student('Marin', 5, 4, 5).
student('Novikov', 2, 3, 2).
student('Podlesnyi', 2, 3, 3).
student('Polezhaev', 5, 5, 5).
student('Sosnin', 4, 4, 4).

smart(NAME):-student(NAME,VALUE1,VALUE2,VALUE3), VALUE1=5, VALUE2=5, VALUE3=5.
dumb(NAME):-student(NAME,VALUE1,VALUE2,VALUE3), (VALUE1=2; VALUE2=2; VALUE3=2).
math(NAME):-student(NAME,VALUE1,VALUE2,_),(VALUE1=4; VALUE1=5), (VALUE2=4; VALUE2=5).

% a) smart('Novikov').
% b) smart(X).
% c) dumb(X).
% d) math('Sosnin').
% e) student(X,2,_,_).

%lab3

%task1
podruga('Anya').
podruga('Valya').
podruga('Natasha').



dress('White').
dress('Green').
dress('Blue').

shoes('White').
shoes('Green').
shoes('Blue').

rule1(H, D, S) :-
    podruga(H),
    dress(D),
    shoes(S),
    H = 'Anya',
    D = S.

rule1(H, D, S) :-
    podruga(H),
    dress(D),
    shoes(S),
    H = 'Valya',
    D \= S,
    D \= 'White',
    S \= 'White'.

rule1(H, D, S) :-
    podruga(H),
    dress(D),
    shoes(S),
    D \= S,
    H = 'Natasha',
    S = 'Green'.

rule1common(H1, H2, H3) :-
    podruga(H1),
    podruga(H2),
    podruga(H3),
    rule1(H1, D1, S1),
    rule1(H2, D2, S2),
    rule1(H3, D3, S3),
    write(H1),write(': '), write(D1), write(' '), write(S1), nl,
    write(H2),write(': '), write(D2), write(' '), write(S2), nl,
    write(H3),write(': '), write(D3), write(' '), write(S3), nl, !. 


% rule1common('Anya', 'Valya', 'Natasha').










