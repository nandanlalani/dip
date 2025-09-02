import "dart:io";

void main() {
  print("enter your weight in pound");
  double weight = double.parse(stdin.readLineSync()!) * 0.45359237;
  print("enter your height in inches");
  double height = double.parse(stdin.readLineSync()!) * 0.0254;
  double bmi = weight / (height * height);
  print("your bmi is $bmi");
}
