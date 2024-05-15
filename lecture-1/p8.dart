import 'dart:io';
void main()
{
  stdout.write("Enter principal:");
  int a=int.parse(stdin.readLineSync()!);

  stdout.write("Enter rate:");
  int b=int.parse(stdin.readLineSync()!);
  
  stdout.write("Enter time:");
  int c=int.parse(stdin.readLineSync()!);

  print("Simple Interest : ${(a*b*c)/100}");
}