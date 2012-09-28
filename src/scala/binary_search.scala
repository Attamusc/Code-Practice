package com.attamusc.practice

object BinarySearch {
  def search(query: Int, a: List[Int]) : Int = {
    var mid : Int = a.size / 2
    var start = 0
    var end = a.size - 1

    while (start <= end) {
      mid = start + (end - start) / 2
      println(mid)
      a(mid) match {
        case i if query > i => start = mid + 1
        case i if query < i => end = mid - 1
        case i if query == i => return mid
      }
    }
    return -1
  }
}

// val index = BinarySearch.search(5, List(1, 2, 2, 3, 4, 5, 6))
// println("Answer: " + index)
