import 'dart:io';
void main()
{
  stdout.write("Enter A:");
  int a=int.parse(stdin.readLineSync()!);
  stdout.write("Enter B:");
  int b=int.parse(stdin.readLineSync()!);
  print("Addition is: ${a+b}");
}