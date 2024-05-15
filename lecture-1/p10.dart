import 'dart:io';
void main()
{
  stdout.write("Enter number:");
  int a=int.parse(stdin.readLineSync()!);

  if(a%2==0)
  {
    print("even number");
  }
  else{
    print("odd number");
  }
}