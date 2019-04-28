{include("sweep.asl")}

// Pick up garbage
// Check we how much were holding
// Less than 2
+at(X,Y): garbage(X,Y) & holding(G) & G < 2 <-
.pickup;
.print(G+1, "Pickup: Holding 1 piece of garbage(s)");
-garbage(X,Y);
-holding(G);
// Update how much we are Holding
+holding(G+1).
// If we find 2 pieces of garbage go back to spawn
+holding(2) <-
.print("2 garbage(s) in hand, moving to 0,0");
!move(0,0);
-drop;
// Drop 1 Piece
.print("Dropping 1 pieces of garbage(s): Holding (1) ");
-holding(2);
+holding(1);
.drop;
// Drop 1 Piece
.print("Dropping 1 pieces of garbage(s): Holding (0) ");
-holding(1);
+holding(0);
// Incinerate garbage!
.send(incinerator).
