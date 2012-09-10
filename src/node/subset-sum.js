// PROBLEM
// -------
// Given an array of integers, 'a', is there some subset of 'a' which
// totals to a given sum, 'n'. If no 'n' is given, default to a sum of
// 0 (the sum used by the classical solution).

var subsetSum = exports.subsetSum = function(a, s) {
  var sum = s || 0,
      array = [],
      total_elements = a.length,
      range = {};


  for (var i = 0; i < total_elements; i++) {
    array[i] = [];
    array[i][i] = a[i];
    if (array[i][i] === sum) {
      range.start = i;
      range.end = i;
    }
    for (var j = i + 1; j < total_elements; j++) {
      array[i][j] = array[i][j - 1] + a[j];
      if (array[i][j] === sum) {
        range.start = i;
        range.end = j;
      }
    }
  }

  // Use a little hack to check for empty objects...
  return Object.keys(range).length !== 0 ? range : null;
};
