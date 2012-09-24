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

println("'(if (zero? x) max (/ 1 x))'? " + balance("(if (zero? x) max (/ 1 x))".toList))
println("'I told him (that it's not (yet) done).\n(But he wasn't listening)'? " + balance("I told him (that it's not (yet) done).\n(But he wasn't listening)".toList))
println("':-)'? " + balance(":-)".toList))
println("'())('? " + balance("())(".toList))
