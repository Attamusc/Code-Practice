// PROBLEM
// -------
// Given a random array of balls with one of three different colors (red, white, or blue)
// arrange the balls so they are in the correct, color-based order.
// NOTE: This is a three-way partition problem

// ASSUMPTIONS
// -----------
// Array is an array of color strings and output should be in the order
// red > white > blue.

var dutchFlagSort = exports.dutchFlagSort = function (array) {
  // Instantiate our index pointers
  var low_index = 0,
      high_index = array.length - 1;

  // Loop through all elements
  for (var i = 0; i <= high_index;) {
    if (array[i] === "red") {
      swap(array, i, low_index);
      low_index++;
      i++;
    }
    else if (array[i] === "blue") {
      swap(array, i, high_index);
      high_index--;
    }
    else {
      i++;
    }
  }
};

var swap = function (array, i, j) {
  var temp = array[i];
  array[i] = array[j];
  array[j] = temp;
};
