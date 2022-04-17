%lab3

%task1
girlfriend('Anya').
girlfriend('Valya').
girlfriend('Natasha').

dress('White').
dress('Green').
dress('Blue').

shoes('White').
shoes('Green').
shoes('Blue').

proc(NAME, DRESS, SHOES) :- girlfriend(NAME), dress(DRESS), shoes(SHOES), 
                            NAME = 'Anya', DRESS = SHOES.

proc(NAME, DRESS, SHOES) :- girlfriend(NAME), dress(DRESS), shoes(SHOES), 
                            NAME = 'Valya', DRESS \= SHOES, DRESS \= 'White', SHOES \= 'White'.

proc(NAME, DRESS, SHOES) :- girlfriend(NAME), dress(DRESS), shoes(SHOES),
                            DRESS \= SHOES, NAME = 'Natasha', SHOES = 'Green'.

res(NAME1, NAME2, NAME3) :- girlfriend(NAME1), girlfriend(NAME2), girlfriend(NAME3),
                            proc(NAME1, DRESS1, SHOES1), proc(NAME2, DRESS2, SHOES2), proc(NAME3, DRESS3, SHOES3),
                            write(NAME1),write(': '), write(DRESS1), write(' '), write(SHOES1), nl,
                            write(NAME2),write(': '), write(DRESS2), write(' '), write(SHOES2), nl,
                            write(NAME3),write(': '), write(DRESS3), write(' '), write(SHOES3), nl. 

% res('Anya', 'Valya', 'Natasha').

%task2

name(borisov).
name(ivanov).
name(semenov).

job(slesar).
job(tokar).
job(svarschik).

worker(NAME, JOB):- name(NAME), job(JOB),
                    not((NAME = borisov, JOB = slesar)),
                    not((NAME = semenov, JOB = tokar)),
                    not((NAME = semenov, JOB = slesar)).


older(NAME1, NAME2):- name(NAME1), name(NAME2).

res(NAME1, JOB1, NAME2, JOB2, NAME3, JOB3):- name(NAME1), name(NAME2), name(NAME3), job(JOB1), job(JOB2),job(JOB3),
                                             NAME1 \= NAME2, NAME1 \= NAME3, NAME2 \= NAME3,
                                             JOB1 \= JOB2, JOB1 \= JOB3, JOB2 \= JOB3,
                                             worker(NAME1, JOB1), worker(NAME2, JOB2), worker(NAME3, JOB3), !.

%task4

boy('Ivan').
boy('Petr').
boy('Michael').
boy('Sanya').
boy('Boris').

color('Red').
color('Black').
color('Blue').
color('Light blue').
color('White').

own(B, C) :- boy(B), color(C),
             B = 'Ivan', C = 'Red'.

own(B, C) :- boy(B), color(C),
             B = 'Petr', C \= 'Black', C \= 'Blue', C \= 'Light blue'.

own(B, C) :- boy(B), color(C),
             B = 'Michael', (C = 'Black'; C = 'Blue').

own(B, C) :- boy(B), color(C),
             B = 'Sanya', (C = 'Red'; C = 'Black'; C = 'Blue'; C = 'Light blue').

own(B, C) :- boy(B), color(C),
             B = 'Boris', (C = 'White'; C = 'Blue').

carMeeting(B1, B2, B3, B4, B5, C1, C2, C3, C4, C5) :- boy(B1), color(C1), own(B1, C1), 
                                                      boy(B2), color(C2), own(B2, C2),
                                                      boy(B3), color(C3), own(B3, C3),
                                                      boy(B4), color(C4), own(B4, C4),
                                                      boy(B5), color(C5), own(B5, C5), 
                                                      C1 \= C2, C1 \= C3, C1 \= C4, C1 \= C5,
                                                      C2 \= C3, C2 \= C4, C2 \= C5,
                                                      C3 \= C4, C3 \= C5,
                                                      C4 \= C5, !.

% carMeeting('Ivan', 'Petr', 'Michael', 'Sanya', 'Boris', C1, C2, C3, C4, C5).

%task3

container(bottle).
container(glass).
container(jug).
container(jar).

liquid(milk).
liquid(lemonade).
liquid(kvass).
liquid(water).

inside(C, L):- container(C), liquid(L),
               not((C = bottle, L = milk)),
               not((C = bottle, L = water)),
               not((C = jar, L = water)),
               not((C = jar, L = lemonade)),
               not((C = jug, L = lemonade)),
               not((C = jug, L = kvass)),
               not((C = glass, L = milk)),
               not((C = jar, L = milk)).

solve(C1, L1, C2, L2, C3, L3, C4, L4):- container(C1), container(C2), container(C3), container(C4),
                                        C1 \= C2, C1 \= C3, C1 \= C4,
                                        C2 \= C3, C2 \= C4,
                                        C3 \= C4,
                                        liquid(L1), liquid(L2), liquid(L3), liquid(L4),
                                        L1 \= L2, L1 \= L3, L1 \= L4, 
                                        L2 \= L3, L2 \= L4,
                                        L3 \= L4,
                                        inside(C1, L1), inside(C2, L2), inside(C3, L3), inside(C4, L4), !.

%task5

town(moscow).
town(spb).
town(novgorod).
town(perm).
town(tomsk).

kid(yura).
kid(tolya).
kid(alesha).
kid(kolya).
kid(vitya).

livein(K, T):- kid(K), town(T),
               not((K = vitya, T = moscow)),
               not((K = vitya, T = tomsk)),
               not((K = yura, T = spb)),
               not((K = tolya, T = spb)),
               not((K = alesha, T = spb)),
               not((K = yura, T = perm)),
               not((K = tolya, T = perm)),
               not((K = alesha, T = perm)),
               not((K = kolya, T = spb)),
               not((K = yura, T = moscow)),
               not((K = yura, T = tomsk)),
               not((K = tolya, T = tomsk)).

solve(K1, T1, K2, T2, K3, T3, K4, T4, K5, T5) :- livein(K1, T1), livein(K2, T2), livein(K3, T3), livein(K4, T4), livein(K5, T5),
                                                 K1 \= K2, K1 \= K3, K1 \= K4, K1 \= K5,
                                                 K2 \= K3, K2 \= K4, K2 \= K5,
                                                 K3 \= K4, K3 \= K5,
                                                 K4 \= K5,
                                                 T1 \= T2, T1 \= T3, T1 \= T4, T1 \= T5,
                                                 T2 \= T3, T2 \= T4, T2 \= T5,
                                                 T3 \= T4, T3 \= T5,
                                                 T4 \= T5, !.
