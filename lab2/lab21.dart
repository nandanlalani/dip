import 'dart:io';

void main() {
  List<int> numbers = [];
  int evenCount = 0;
  int oddCount = 0;

  print("Enter the number of elements:");
  int n = int.parse(stdin.readLineSync()!);

  print("Enter $n numbers:");
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print("Even numbers: $evenCount");
  print("Odd numbers: $oddCount");
}
