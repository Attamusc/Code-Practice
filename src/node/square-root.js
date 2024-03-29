// PROBLEM
// -------
// Create a function which can find the square root of a given number without
// using any language built-in power or square root function.

var squareRoot = exports.squareRoot = function (num, precision) {
  var prev = num,
      guess = num/2,
      delta = prev - guess,
      threshold = 0.01;

      while(delta > threshold) {
        prev = guess;
        guess = (guess + (num / guess)) / 2;
        delta = prev - guess;
      }

      return guess.toFixed(3);
};
