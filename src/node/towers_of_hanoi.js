var hanoi = function(n, src, aux, dest) {
  if (n > 0) {
    hanoi(n - 1, src, dest, aux);
    console.log("Moved from " + src + " to " + dest);
    hanoi(n - 1, aux, src, dest);
  }
};

hanoi(3, "A", "B", "C");
