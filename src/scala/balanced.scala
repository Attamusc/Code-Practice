package com.attamusc.practice

object BalancedString {
  def balance(chars: List[Char]): Boolean = {
    def check(a: List[Char], unbalancedCount: Int): Int = {
      if (a.isEmpty || unbalancedCount < 0) {
        unbalancedCount
      }
      else if (a.head == '(') {
        check(a.tail, unbalancedCount + 1)
      }
      else if (a.head == ')') {
        check(a.tail, unbalancedCount - 1)
      }
      else {
        check(a.tail, unbalancedCount)
      }
    }

    check(chars, 0) == 0
  }
}
