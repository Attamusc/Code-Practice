def countChange(money: Int, coins: List[Int]): Int = {
  def restrictedChange(amount: Int, sortedCoins: List[Int]): Int = {
    if (amount < 0 || sortedCoins.isEmpty) 0
    else if (amount == 0) 1
    else restrictedChange(amount - sortedCoins.head, sortedCoins) + restrictedChange(amount, sortedCoins.tail)
  }

  restrictedChange(money, coins.sortWith((x, y) => x > y))
}

countChange(4,List(1,2)) === 3
countChange(300,List(5,10,20,50,100,200,500)) === 1022
countChange(301,List(5,10,20,50,100,200,500)) === 0
countChange(300,List(500,5,50,100,20,200,10)) === 1022
