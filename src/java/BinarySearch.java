package com.attamusc.practice;

import java.util.ArrayList;
import java.util.Arrays;

class BinarySearch {
  public static int search(int query, ArrayList<Integer> a) {
    int mid = a.size() / 2;
    int start = 0;
    int end = a.size() - 1;

    while (start <= end) {
      mid = start + (end - start) / 2;
      System.out.println(mid);

      if (query > a.get(mid)) {
        start = mid + 1;
      }
      else if (query < a.get(mid)) {
        end = mid - 1;
      }
      else {
        return mid;
      }
    }
    return -1;
  }

  public static void main(String[] args) {
    int index = BinarySearch.search(5, new ArrayList<Integer>(Arrays.asList(1, 2, 2, 3, 4, 5, 6)));
    System.out.println("Answer: " + index);
  }
}
