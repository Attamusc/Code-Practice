package com.attamusc.practice

import org.scalatest.FunSpec
import org.scalatest.matchers.ShouldMatchers
import com.attamusc.practice.PascalTriangle.pascal

class PascalTriangleSpec extends FunSpec with ShouldMatchers {
  describe ("The Pascal Triangle Solution") {
    it ("col=0, row=2") {
      pascal(0,2) should equal (1)
    }

    it ("col=1, row=2") {
      pascal(1,2) should equal (2)
    }

    it ("col=1, row=3") {
      pascal(1,3) should equal (3)
    }
  }
}
