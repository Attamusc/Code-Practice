assert = require("assert")
minCoins = require("../../src/node/greedy_minimum_coins").minCoins

describe "Greedy minimum coins solution", ->
  it "should work for standard American coin amounts", ->
    assert.equal(minCoins(56, [1, 5, 10, 25]), 4)

  it "should work for coin sets that adhere to the c[i] * 2 < c[i+1] rule", ->
    assert.equal(minCoins(20, [1, 2, 4, 25]), 5)

  it "shoudn't work for coins that violate the c[i] * 2 < c[i+1] rule", ->
    assert.equal(minCoins(6, [1, 3, 4]), 3)
