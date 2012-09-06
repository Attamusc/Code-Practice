assert = require("assert")
sqrt = require("../../src/node/square-root").squareRoot
dfs = require("../../src/node/dnfp").dutchFlagSort

describe "Square Root", ->
  it "should work for 4", ->
    assert.equal(sqrt(4), 2)
  it "should work for 16", ->
    assert.equal(sqrt(16), 4)
  it "should work for 144", ->
    assert.equal(sqrt(144), 12)

describe "Dutch National Flag Problem", ->
  it "should work for the array ['red', 'red', 'blue', 'white', 'red', 'blue', 'white']", ->
    assert.equal(
      dfs(['red', 'red', 'blue', 'white', 'red', 'blue', 'white'],
      ['red', 'red', 'red', 'white', 'white', 'blue', 'blue']))
