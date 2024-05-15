import 'dart:io';
void main()
{
  stdout.write("Enter first name:");
  String a=stdin.readLineSync()!;
  stdout.write("Enter first name:");
  String b=stdin.readLineSync()!;
  
  print("Full name: $a $b");
}