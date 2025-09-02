import "dart:io";

void main() {
  print("enter 1st number");
  int n1 = int.parse(stdin.readLineSync()!);
  print("enter 2nd number");
  int n2 = int.parse(stdin.readLineSync()!);
  print(
      """ enter your choice: 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division """);
  int choice = int.parse(stdin.readLineSync()!);
  if (choice == 1) {
    print("addition of given numbers is:${n1 + n2}");
  } else if (choice == 2) {
    print("subtraction of given numbers is:${n1 - n2}");
  } else if (choice == 3) {
    print("multiplication of given numbers is:${n1 * n2}");
  } else {
    print("division of given numbers is:${n1 / n2}");
  }
}
