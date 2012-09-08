// TODO: Solve the 'Print by Depth Level' problem

var Queue = function (array) {
  this.queue_ds = array.slice(0) || [];

  this.enqueue = function(element) {
    this.queue_ds.push(element);
  };

  this.dequeue = function() {
    return this.queue_ds.splice(0, 1)[0];
  };
};

exports.Queue = Queue;

var BinaryTree = function () {
  this.data = '';
  this.left = null;
  this.right = null;
};
