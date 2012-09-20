var allSubsets = exports.allSubsets = function (array, s) {
  // Find the number of permutations
  // Do so by using bitwise left shift to find 2^n
  var size = s || 0,
      n = 1 << array.length,
      results = [];

  for (var i = 0; i < n; i++) {
    var subset = [],
        bit_rep = i,
        cursor = 0;

    // While there are still 1 bits...
    while (bit_rep > 0) {
      // if the 0th bit is 1...
      if ((bit_rep & 1) === 1) {
        // include it in the subset
        subset.push(array[cursor]);
      }

      bit_rep >>= 1;
      cursor++;
    }

    if (size === 0 || subset.length === size) {
      results.push(subset);
    }
  }

  return results;
};
