assert = require("assert")
BigInt = require("../../src/node/big_int")

describe "A BigInt", ->
  it "should be instantiable", ->
    bigInt = new BigInt()
    assert.notEqual(bigInt, null)

  it "should be addable to another BigInt", ->
    a = new BigInt([1, 1, 0])
    b = new BigInt([4, 5])
    assert.equal(a.add(b).toString(), (new BigInt([1, 5, 5])).toString());

  it "should be addable to another BigInt with proper math laws", ->
    a = new BigInt([9, 9, 9])
    b = new BigInt([1])
    assert.equal(a.add(b).toString(), (new BigInt([1, 0, 0, 0])).toString());

  it "should be able to be multiplied by another BigInt", ->
    a = new BigInt([1, 1, 2])
    b = new BigInt([2, 2])
    assert.equal(a.multiply(b).toString(), (new BigInt([2, 4, 6, 4])).toString());
