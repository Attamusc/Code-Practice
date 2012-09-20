assert = require('assert')
allSubsets = require('../../src/node/all_subsets').allSubsets

describe 'Find all subsets', ->
  it 'should find the empty set for the given list []', ->
    assert.deepEqual allSubsets([]), [[]]

  it 'should find [[], [a], [b], [c], [a,b], [a,c], [b,c], [a,b,c]] for the given list [a, b, c]', ->
    assert.deepEqual allSubsets(["a", "b", "c"]), [[],["a"],["b"],["a","b"],["c"],["a","c"],["b","c"],["a","b","c"]]

  it 'should find [[a, c], [a, c], [b, c]] for the given list [a, b, c]', ->
    assert.deepEqual allSubsets(["a", "b", "c"], 2), [["a", "b"], ["a", "c"], ["b", "c"]]
