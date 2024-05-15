import 'dart:io';
void main()
{
  stdout.write("Enter first number:");
  int a=int.parse(stdin.readLineSync()!);
  
  int i;
  for(i=1;i<=10;i++)
  {
    print("$a * $i = ${a*i}");
  }
}