package com.attamusc.practice

object CountChange {
  def countChange(money: Int, coins: List[Int]): Int = {
    def restrictedChange(amount: Int, sortedCoins: List[Int]): Int = {
      if (amount < 0 || sortedCoins.isEmpty) 0
      else if (amount == 0) 1
      else restrictedChange(amount - sortedCoins.head, sortedCoins) + restrictedChange(amount, sortedCoins.tail)
    }

    restrictedChange(money, coins.sortWith((x, y) => x > y))
  }
}
