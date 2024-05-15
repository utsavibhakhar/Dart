import 'dart:io';
void main()
{
  stdout.write("Enter first number:");
  int a=int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number:");
  int b=int.parse(stdin.readLineSync()!);

  int i,j;
  for(i=1;i<=10;i++)
  {
    print("$a * $i = ${a*i}");
  }
  for(j=1;j<=10;j++)
    {
        print("$b * $j = ${b*j}");
    }
}