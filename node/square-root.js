var squareRoot = exports.squareRoot = function (num, precision) {
  var prev = num,
      guess = num/2,
      delta = prev - guess,
      threshold = .01;
      i = 0;
      console.log(threshold);

      while(delta > threshold) {
        console.log("iteration: " + i + " delta: " + delta + " prev: " + prev + " guess: " + guess);
        prev = guess;
        guess = (guess + (num / guess)) / 2;
        delta = prev - guess;
        i++;
      }

      return guess;
};

console.log(squareRoot(16));
