assert = require("assert")
sqrt = require("../../src/node/square-root").squareRoot
dfs = require("../../src/node/dnfp").dutchFlagSort
Queue = require("../../src/node/depth-print").Queue

describe "Square Root", ->
  it "should work for 4", ->
    assert.equal(sqrt(4), 2)

  it "should work for 16", ->
    assert.equal(sqrt(16), 4)

  it "should work for 144", ->
    assert.equal(sqrt(144), 12)

describe "Dutch National Flag Problem", ->
  it "should work for the array ['red', 'red', 'blue', 'white', 'red', 'blue', 'white']", ->
    assert.deepEqual(
      dfs(['red', 'red', 'blue', 'white', 'red', 'blue', 'white'],
      ['red', 'red', 'red', 'white', 'white', 'blue', 'blue']))

describe "Queue", ->
  it "should be able to be constructed", ->
    a_queue = new Queue([1, 2, 3])
    assert.deepEqual(a_queue.queue_ds, [1, 2, 3])

  it "should be able to be enqueued", ->
    a_queue = new Queue([1, 2, 3])
    a_queue.enqueue(4);
    assert.deepEqual(a_queue.queue_ds, [1, 2, 3, 4])

  describe "dequeue", ->
    it "should return the first element", ->
      a_queue = new Queue([1, 2, 3])
      assert.deepEqual(a_queue.dequeue(), 1)

    it "should mutate the inner data structure", ->
      a_queue = new Queue([1, 2, 3])
      a_queue.dequeue();
      assert.deepEqual(a_queue.queue_ds, [2, 3])

