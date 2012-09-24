// Greedy Max subset sum example

var maxSubsetSum = exports.maxSubsetSum = function (list) {
  var max = list[0];

  // This is NOT pure; it has side-effects...which is the point for this...
  list.reduce(function (prev, curr) {
    var sum = prev + curr;
    if (sum > max) max = sum;
    if (sum < 0) sum = 0;
    return sum;
  });

  return max;
};
