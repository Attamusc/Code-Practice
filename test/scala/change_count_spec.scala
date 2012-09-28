package com.attamusc.practice

import org.scalatest.FunSpec
import org.scalatest.matchers.ShouldMatchers
import com.attamusc.practice.CountChange.countChange

class ChangeCountSpec extends FunSpec with ShouldMatchers {
  describe("The Change Count Algorithm") {
    it("should work for example from instructions") {
      countChange(4,List(1,2)) should equal (3)
    }

    it("should work for sorted coins") {
      countChange(300,List(5,10,20,50,100,200,500)) should equal (1022)
    }

    it("should work for no pennies") {
      countChange(301,List(5,10,20,50,100,200,500)) should equal (0)
    }

    it("should work for unsorted coins") {
      countChange(300,List(500,5,50,100,20,200,10)) should equal (1022)
    }
  }
}
