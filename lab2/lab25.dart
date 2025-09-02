import "dart:io";

void main() {
  print("enter number of element you want to add in list");
  int n = int.parse(stdin.readLineSync()!);
  List<int> lst = [];
  for (int i = 0; i < n; i++) {
    print("enter ${i + 1} value");
    int num = int.parse(stdin.readLineSync()!);
    lst.add(num);
  }
  print("without sorting list:$lst");
  for (int i = 0; i < lst.length - 1; i++) {
    for (int j = 0; j < lst.length - i - 1; j++) {
      if (lst[j] > lst[j + 1]) {
        int temp = lst[j];
        lst[j] = lst[j + 1];
        lst[j + 1] = temp;
      }
    }
  }
  print("After sorting list is:$lst");
}
