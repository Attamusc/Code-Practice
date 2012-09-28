var minCoins = module.exports = function(amount, coins) {
  var minCoinsIter = function(amount, coins, numCoins) {
    if (amount === 0) {
      return numCoins;
    }
    if (amount < 0 || coins.length === 0) {
      return Infinity;
    }
    return Math.min(minCoinsIter(amount - coins[0], coins, numCoins + 1), minCoinsIter(amount, coins.slice(1), numCoins));
  };
  return minCoinsIter(amount, coins.sort(function (a, b) { return a < b; }), 0);
};
