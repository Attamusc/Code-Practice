package com.attamusc.practice

import org.scalatest.FunSpec
import org.scalatest.matchers.ShouldMatchers
import com.attamusc.practice.BalancedString.balance

class BalanceSuite extends FunSpec with ShouldMatchers {
  describe("The Balanced Solution") {
    it ("'(if (zero? x) max (/ 1 x))' is balanced.") {
      balance("(if (zero? x) max (/ 1 x))".toList) should equal (true)
    }

    it ("'I told him ...' is balanced.") {
      balance("I told him (that it's not (yet) done).\n(But he wasn't listening)".toList) should equal (true)
    }

    it ("':-)' is unbalanced.") {
      balance(":-)".toList) should equal (false)
    }

    it ("Counting is not enough.") {
      balance("())(".toList) should equal (false)
    }
  }
}
