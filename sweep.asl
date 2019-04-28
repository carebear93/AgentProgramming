{include("move.asl")}
!sweep.

// Search are of 10x10
+!sweep <-
for (.range(11,I)) {
    for (.range(11,J)) {
if (I mod 2 == 0){
    !move(I, J);
    .check_for_garbage;
}
// Cover all spaces within search area
if (I mod 2 == 1){
    !move(I, 11 - J);
    .check_for_garbage;
}
    }
}.
