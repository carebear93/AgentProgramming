!move.

+!move(X,Y): at(X,Y).

//Move Up / North
+!move(X,Y): at(OX,OY) & OY<Y <-
-at(OX,OY);
.print("Moving North!");
.north;
.print(X,Y);
!agent_location(X,Y);
!move(X,Y).

// Move Left / East
+!move(X,Y): at(OX,OY) & OX<X <-
-at(OX,OY);
.print("Moving East!");
.east;
.print(X,Y);
!agent_location(X,Y);
!move(X,Y).

// Move Down / South
+!move(X,Y): at(OX,OY)& OY>Y <-
-at(OX,OY);
.print("Moving South!");
.south;
.print(X,Y);
!agent_location(X,Y);
!move(X,Y).

//Move Right/ West
+!move(X,Y): at(OX,OY) & OX>X <-
-at(OX,OY);
.print("Moving West!");
.west;
.print(X,Y);
!agent_location(X,Y);
!move(X,Y).

//Declare location!
+!agent_location(X,Y) <-
.sense_location(OX,OY);
+at(OX,OY).

// Search 50x50
// Search verticle priority!
+!move <-
for (.range(11,I)) {
    for (.range(11,J)) {
// Check Y
if (J mod 2 == 0){
    !move(I, J);
}
if (J mod 2 == 1){
    !move(I, 10 - J);
}
    }
}.
