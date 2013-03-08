// ---PROBLEM---
// Given the numbers 1 to 100, print the number; except, if the 
// number is divisible by 3 print 'Fizz'. If the number is 
// divisible by 5 print 'Buzz'. If the number is divisible by both
// print 'FizzBuzz'.

// Abstracted to work for any range, which is cool.
var fizzbuzz = exports.fizzbuzz = function(begin, end) {
  if (begin > end) return;

  var results = [];

  for (var i = begin, result = ''; i <= end; i++, result = '') {
    if (i % 3 === 0) {
      result += "Fizz";
    }
    if (i % 5 === 0) {
      result += "Buzz";
    }

    results.push(result ? result : i);
  }

  return results;
};

// LOL one-liner fizzbuzz
// var fizzbuzz = function() { var fizz = '', buzz = ''; for(var i = 0; i <= 100; i++) { console.log((fizz = i % 3 === 0 ? 'Fizz' : '') + (buzz = i % 5 === 0 ? 'Buzz' : '') + (!(fizz || buzz) ? i : '')); }};
