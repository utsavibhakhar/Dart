import "dart:io";
void main()
{
  stdout.write("Enter number:");
  int a=int.parse(stdin.readLineSync()!);

  print("cube is: ${a*a*a}");
}