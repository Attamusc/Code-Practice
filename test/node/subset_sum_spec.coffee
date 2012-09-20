assert = require("assert")
subsetSum = require("../../src/node/subset-sum").subsetSum

describe "Subset Sum Problem", ->
  it "should work for the array [0]", ->
    assert.deepEqual(subsetSum([0]), {start: 0, end: 0})

  it "should work for the array [-10, 10] with default sum", ->
    assert.deepEqual(subsetSum([-10, 10]), {start: 0, end: 1})

  it "should work for the array [-10, 10] with sum 10", ->
    assert.deepEqual(subsetSum([-10, 10], 10), {start: 1, end: 1})

  it "should NOT work for the array [10, 10] with default sum", ->
    assert.deepEqual(subsetSum([10, 10]), null)

  it "should NOT work for the array [10, 10] with the sum 100", ->
    assert.deepEqual(subsetSum([10, 10], 100), null)

  it "should work for the array [2, 4, -6, 10, 18, -2] with default sum", ->
    assert.deepEqual(subsetSum([2, 4, -6, 10, 18, -2]), {start: 0, end: 2})
