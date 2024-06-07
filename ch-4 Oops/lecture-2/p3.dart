import 'dart:io';

void addition(int a,int b)
{
  print("Addition is:${a+b}");
}
void substraction(int a,int b)
{
  print("substraction is:${a-b}");
}
void multiplication(int a,int b)
{
  print("multiplication is:${a*b}");
}
void division(int a,int b)
{
  print("division is:${a/b}");
}
void modual(int a,int b)
{
  print("modual is:${a%b}");
}
void main()
{
  while(true){
  print("press 1 for Addition");
  print("press 2 for Substraction");
  print("press 3 for Multiplication");
  print("press 4 for Division");
  print("press 5 for Modual");
  print("Enter choice:");
  int choice=int.parse(stdin.readLineSync()!);

  switch(choice)
  {
    case 1:
      stdout.write("Enter A:");
      int a=int.parse(stdin.readLineSync()!);
      stdout.write("Enter B:");
      int b=int.parse(stdin.readLineSync()!);
      addition(a, b);
      break;

      case 2:
      stdout.write("Enter A:");
      int a=int.parse(stdin.readLineSync()!);
      stdout.write("Enter B:");
      int b=int.parse(stdin.readLineSync()!);
      substraction(a, b);
      break;

      case 3:
      stdout.write("Enter A:");
      int a=int.parse(stdin.readLineSync()!);
      stdout.write("Enter B:");
      int b=int.parse(stdin.readLineSync()!);
      multiplication(a, b);
      break;

      case 4:
      stdout.write("Enter A:");
      int a=int.parse(stdin.readLineSync()!);
      stdout.write("Enter B:");
      int b=int.parse(stdin.readLineSync()!);
      division(a, b);
      break;

      case 5:
      stdout.write("Enter A:");
      int a=int.parse(stdin.readLineSync()!);
      stdout.write("Enter B:");
      int b=int.parse(stdin.readLineSync()!);
      modual(a, b);
      break;

      default:
      print("Invalid data...");
      return;
  }
  }
}