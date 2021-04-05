# Lab09

|Full name|Student number|
|----|----|
|Ayman Fakri|300120735|

## Q1a: Test des formes normales

### A:

(ABCD)+ ->{A,B,C,D}
(BD)+ ->{B,D,A,C}
B+ ->{B}
D+ ->{A,D}

thus BD is a candidate key
PRIME attributes are {B,D}
We can see that they are present on the right side of some fonctional dependacies.

(BC)+ ->{B,C,D,A}

BC is a superkey lets verify that its a candidate key


B+ ->{B}

C+ ->{D,C,A}

thus BC is a candidate key

PRIME attributes become {B,D,C}

We can see that C is present on the right side 

we can replace it then with AB

BAB=AB

(AB)+ ->{A,B,C,D}

lets verify that its a candidate key

A+ ->{A}

B+ ->{B}

thus AB is a candidate key. The PRIME attributes are {A,B,D,C}

The candidate keys are {BD,BC,AB}

### B:

lets verify if R is in BCNF:
AB is a candidate key then its a super key .
C is not a super key thus R is not in BCNF

lets verify if R is in 3NF:
The prime attributes are {A,B,D,C}

C , D , A are all prime attributes thus R is in 3NF

## Q1b: Test des formes normales

### A:

(A,B,C,D)+ -> {A,B,C,D}
(D)+ ->{D,A,B,C}

thus D is a candidate key 
Prime attribute are {D}
we can see that D is on the right side, lets replace it with C

(C)+ ->{C,D,A,B} 

thus C is a candidate key
Prime attributes are now {C,D}

lets replace C with B
(B)+ -> {B,C,D,A}

B is a candidate key
Prime attributes are now {B,C,D}

lets replace B with A
(A)+ ->{A,B,C,D}

A is a candidate key

Prime attributes are {A,B,C,D}

the candidate keys are {A,B,C,D}


### B:

lets verify if R is in BCNF:
A,B,C,D are all super keys then R is in BCNF

Since R is in BCNF, this implies that its also in 3NF

## Q1c: Test des formes normales

### A:

(ABCD)+ ->{A,B,C,D}

(B)+ ->{A,B,C,D}
thus B is a candidate key
the prime attributes are {B}

B is the only candidate key.

### B:

lets verify if R is in BCNF:

C is not a super key thus R is not in BCNF

lets verify if R is in 3NF:

C is not a prime attribute thus R is not in 3NF

## Q1d: Test des formes normales

### A:

(A,B,C,D)+ ->{A,B,C,D}

(ABC)+ ->{A,B,C,D}

ABC is a candidate key and the prime attributes are {A,B,C}

ABC is the only candidate key

### B: 

Lets verify if R is in BCNF:

D is not a super key thus R is not in BCNF.

Lets verify if R is in 3NF:

D is not a prime attribute thus R is not in 3NF.

## Q1e: Test des formes normales

###A:

(ABCD)+ ->{A,B,C,D}

(AB)+ ->{A,B,C,D}

AB is the only candidate key and the prime attribute are {A,B}

###B:

lets verify if R is in BCNF:

A is not a super key thus R is not in BCNF

lets verify if R is in 3NF:

C is not a prime attribute thus R is not in 3NF

## Q2a: Test de la dépendance fonctionnelle

We have AB -> C augmentation rute => AB ->BC

Transitivity rule => AB ->AD => AB->D VALID

## Q2b: Test de la dépendance fonctionnelle

we have A+ -> {A}

thus A -> C IS NOT VALID

## Q2c: Test de la dépendance fonctionnelle

B+ ->{B}

THUS B ->C IS NOT VALID








