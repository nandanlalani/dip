import "dart:io";

void main() {
  print("Enter the number of item you want to add in list ");
  int n = int.parse(stdin.readLineSync()!);
  List<double> lst = [];
  for (int i = 0; i < n; i++) {
    print("enter ${i + 1} value");
    double num = double.parse(stdin.readLineSync()!);
    lst.add(num);
  }
  print("list of double numbers is:$lst");
  double total = 0;
  for (double i in lst) {
    total += i;
  }
  print("total of list of double numbers is:${total.toStringAsFixed(2)}");
}
