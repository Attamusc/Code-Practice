assert = require("assert")
sqrt = require("../../src/node/square-root").squareRoot
dfs = require("../../src/node/dnfp").dutchFlagSort
Queue = require("../../src/node/depth-print").Queue
BinaryTree = require("../../src/node/depth-print").BinaryTree
breadthPrint = require("../../src/node/depth-print").breadthPrint

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

  it "should know if it is empty", ->
    a_queue = new Queue();
    assert.equal(a_queue.empty(), true);

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

  describe "Binary Tree", ->
    it "should be able to be constructed", ->
      a_btree = new BinaryTree(4)
      assert.notEqual(a_btree, null)

    it "should be able to be added to", ->
      a_btree = new BinaryTree(4)
      b_btree = new BinaryTree(2)

      a_btree.setLeft(b_btree)

      assert.equal(a_btree.left(), b_btree)

  describe "Breadth-first Print", ->
    it "should be able to work for a root-only tree", ->
      root = new BinaryTree(5);
      assert.equal(breadthPrint(root), "5")

    it "should work for an arbitrary depth b-tree", ->
      # Depth 0
      root = new BinaryTree(0)
      $1_node = new BinaryTree(1)
      $2_node = new BinaryTree(2)
      $3_node = new BinaryTree(3)
      $4_node = new BinaryTree(4)
      $5_node = new BinaryTree(5)
      $6_node = new BinaryTree(6)
      $7_node = new BinaryTree(7)

      # Depth 1
      root.setLeft($1_node);
      root.setRight($2_node);

      # Depth 2
      $1_node.setLeft($3_node);
      $1_node.setRight($4_node);
      $2_node.setLeft($5_node);
      $2_node.setRight($6_node);

      # Depth 3
      $4_node.setLeft($7_node);

      assert.equal(breadthPrint(root), "0, 1, 2, 3, 4, 5, 6, 7")
