// A stupid simple Queue implementation
var Queue = function (array) {
  this.queue_ds = array ? array.slice(0) : [];

  this.enqueue = function(element) {
    this.queue_ds.push(element);
  };

  this.dequeue = function() {
    return this.queue_ds.splice(0, 1)[0];
  };

  this.empty = function() {
    return this.queue_ds.length === 0;
  };
};

// A stupid simple Binary Tree implementation
var BinaryTree = function (data) {
  this.data = data >= 0 ? data : '';
  this._left = null;
  this._right = null;

  this.left = function() {
    return this._left;
  };

  this.right = function() {
    return this._right;
  };

  this.setLeft = function(btree) {
    this._left = btree;
  };

  this.setRight = function(btree) {
    this._right = btree;
  };

  this.hasLeft = function() {
    return this._left !== null;
  };

  this.hasRight = function() {
    return this._right !== null;
  };
};

// Now to the good part :D

var breadthPrint = function(root) {
  var q = new Queue(),
      data = [],
      node = null;

  q.enqueue(root);

  while (!q.empty()) {
    node = q.dequeue();

    if (node.hasLeft()) {
      q.enqueue(node.left());
    }
    if (node.hasRight()) {
      q.enqueue(node.right());
    }

    data.push(node.data);
  }

  return data.join(", ");
};

exports.Queue = Queue;
exports.BinaryTree = BinaryTree;
exports.breadthPrint = breadthPrint;
