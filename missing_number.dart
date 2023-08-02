/*
Given an array of size N-1 such that it only contains distinct integers in the range of 1 to N. Find the missing element.
Input:
N = 5
A[] = {1,2,3,5}
Output: 4
Input:
N = 10
A[] = {6,1,2,8,3,4,7,10,5}
Output: 9
*/
missingArray() {
  int n = 5;
  // int n =9;
  List<int> array = [1, 2, 3, 5];
  // List<int> array = [6, 1, 2, 8, 3, 4, 7, 10, 5];
  int m = (((n * (n + 1)) / 2)).round();
  array.sort();
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    sum += array[i];
    if (array[i] != i + 1) {
      print(i + 1);
      break;
    }
  }
  print(m - sum);
}
