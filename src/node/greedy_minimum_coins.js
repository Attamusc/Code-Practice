var minCoins = exports.minCoins = function (amount, coins) {
  var numCoins = 0,
      currentCoin = 0;

  coins = coins.sort(function (a, b) { return a < b; });

  while (amount > 0 && currentCoin < coins.length) {
    if (coins[currentCoin] <= amount) {
      amount -= coins[currentCoin];
      numCoins++;
    }
    else {
      currentCoin++;
    }
  }

  return amount === 0 ? numCoins : 0;
};
