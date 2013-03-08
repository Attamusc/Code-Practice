assert = require("assert")
fizzbuzz = require("../../src/node/fizzbuzz").fizzbuzz

describe "fizzbuzz", ->
  it "prints 'Fizz' for a multiple of 3", ->
    assert.deepEqual(fizzbuzz(3, 3), ["Fizz"])
    assert.deepEqual(fizzbuzz(6, 6), ["Fizz"])

  it "prints 'Buzz for a multiple of 5", ->
    assert.deepEqual(fizzbuzz(5, 5), ["Buzz"])
    assert.deepEqual(fizzbuzz(10, 10), ["Buzz"])

  it "prints 'FizzBuzz' for a multiple of 3 and 5", ->
    assert.deepEqual(fizzbuzz(15, 15), ["FizzBuzz"])
    assert.deepEqual(fizzbuzz(30, 30), ["FizzBuzz"])

  it "prints the iteration for a non-multiple of 3 or 5", ->
    assert.deepEqual(fizzbuzz(1, 1), [1])
    assert.deepEqual(fizzbuzz(11, 11), [11])

