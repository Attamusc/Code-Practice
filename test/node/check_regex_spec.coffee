assert = require("assert")
checkRegex = require("../../src/node/check_regex")

describe "checkRegex function", ->
  it "should work for the string 'abccc' and regex 'abc*'", ->
    assert.equal(checkRegex("abccc", "abc*"), true)

  it "should respect the * catch-all for a regex like 'a*a' and string 'a'", ->
    assert.equal(checkRegex("a", "a*a"), true);
