assert = require('assert')
maxSubsetSum = require('../../src/node/max_subset_sum').maxSubsetSum

describe "Max Subset Sum", ->
  it "should return 10 for the list [2, 8, -1]", ->
    assert.equal(maxSubsetSum([2, 8, -1]), 10)

  it "should return 100 for the list [2, 8, -1000, 100]", ->
    assert.equal(maxSubsetSum([2, 8, -1000, 100]), 100)

  it "should return -1 for the list [-2, -8, -1]", ->
    assert.equal(maxSubsetSum([-2, -8, -1]), -1)
