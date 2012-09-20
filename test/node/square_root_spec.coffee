assert = require("assert")
sqrt = require("../../src/node/square-root").squareRoot

describe "Square Root", ->
  it "should work for 4", ->
    assert.equal(sqrt(4), 2)

  it "should work for 16", ->
    assert.equal(sqrt(16), 4)

  it "should work for 144", ->
    assert.equal(sqrt(144), 12)
