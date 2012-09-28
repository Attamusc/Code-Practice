var BigInt = function(bigIntArray) {
  this.dataList = bigIntArray || [];

  this.add = function(operand) {
    var lengthDiff = Math.abs(this.dataList.length - operand.dataList.length),
        padding = [],
        left = [],
        right = [],
        result = [],
        sum = 0,
        remainder = 0;

    for (var i = 0; i < lengthDiff; i++) {
      padding.push(0);
    }

    if (this.dataList.length < operand.dataList.length) {
      left = padding.concat(this.dataList);
      right = operand.dataList;
    }
    else {
      left = this.dataList;
      right = padding.concat(operand.dataList);
    }

    for (var n = left.length - 1; n >= 0; n--) {
      sum = left[n] + right[n] + remainder;
      remainder = Math.floor(sum / 10);
      result[n] = sum % 10;
    }

    if (remainder > 0) {
      result = [remainder].concat(result);
    }

    return new BigInt(result);
  };

  this.multiply = function(operand) {
    var product = 0,
        remainder = 0,
        left = this.dataList,
        right = operand.dataList,
        partialProducts = [],
        maxLength = 0,
        result = [];

    for (var i = left.length - 1; i >= 0; i--) {
      var shift = (left.length - 1) - i;
      partialProducts[i] = [];

      for (var k = 0; k < shift; k ++) {
        partialProducts[i].push(0);
      }

      for (var j = right.length - 1; j >= 0; j--) {
        product = (left[i] * right[j]) + remainder;
        remainder = Math.floor(product / 10);
        partialProducts[i].push(product % 10);
      }

      if (remainder > 0) {
        partialProducts[i].push(remainder);
      }

      if (partialProducts[i].length > maxLength) {
        maxLength = partialProducts[i].length;
      }
    }

    remainder = 0;

    for (var j = 0; j < maxLength; j++) {
      var columnSum = remainder;
      var columnToAppend = (maxLength - 1) - j;

      for (var i = 0; i < partialProducts.length; i++) {
        if (partialProducts[i][j] !== undefined) {
          columnSum += partialProducts[i][j];
        }
      }

      remainder = Math.floor(columnSum / 10);

      result[columnToAppend] = columnSum % 10;
    }

    if (remainder > 0) {
      result = [remainder].concat(result);
    }

    return new BigInt(result);
  };

  this.toString = function() {
    return this.dataList.join("");
  };
};

exports = module.exports = BigInt;
