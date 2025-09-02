import "dart:io";

void main() {
  print("enter number");
  int n = int.parse(stdin.readLineSync()!);
  if (n < 0) {
    print("number is negative");
  } else if (n > 0)
    print("number is positive");
  else
    print("number is zero");
}
