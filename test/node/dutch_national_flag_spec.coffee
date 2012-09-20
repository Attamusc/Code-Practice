assert = require("assert")
dfs = require("../../src/node/dnfp").dutchFlagSort

describe "Dutch National Flag Problem", ->
  it "should work for the array ['red', 'red', 'blue', 'white', 'red', 'blue', 'white']", ->
    assert.deepEqual(
      dfs(['red', 'red', 'blue', 'white', 'red', 'blue', 'white'],
      ['red', 'red', 'red', 'white', 'white', 'blue', 'blue']))
