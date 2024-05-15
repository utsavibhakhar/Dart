import 'dart:io';
void main()
{
  
    print("press +");
    print("press -");
    print("press *");
    print("press /");
    print("press %");
    stdout.write("Enter choice:");
    String choice=stdin.readLineSync()!;

    switch(choice)
    {
      case '+':
        stdout.write("Enter A:");
        int a=int.parse(stdin.readLineSync()!);
        stdout.write("Enter B:");
        int b=int.parse(stdin.readLineSync()!);
        print("Addition is: ${a+b}");
        break;

      case '-':
        stdout.write("Enter A:");
        int a=int.parse(stdin.readLineSync()!);
        stdout.write("Enter B:");
        int b=int.parse(stdin.readLineSync()!);
        print("Substraction is: ${a-b}");
        break;

      case '*':
        stdout.write("Enter A:");
        int a=int.parse(stdin.readLineSync()!);
        stdout.write("Enter B:");
        int b=int.parse(stdin.readLineSync()!);
        print("Multiplication is: ${a*b}");
        break;

      case '/':
        stdout.write("Enter A:");
        int a=int.parse(stdin.readLineSync()!);
        stdout.write("Enter B:");
        int b=int.parse(stdin.readLineSync()!);
        print("Division is: ${a/b}");
        break;

      case '%':
        stdout.write("Enter A:");
        int a=int.parse(stdin.readLineSync()!);
        stdout.write("Enter B:");
        int b=int.parse(stdin.readLineSync()!);
        print("Modual is: ${a%b}");
        break;

      default:
        print("Invalid data...");
    }
}