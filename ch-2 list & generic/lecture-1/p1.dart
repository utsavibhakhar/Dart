import 'dart:io';
void main()
{
  stdout.write("Enter Size:");
  int a=int.parse(stdin.readLineSync()!);

  List b=[];
  for(int i=0;i<a;i++)
  {
    stdout.write("Input:");
    int c=int.parse(stdin.readLineSync()!);
    
    b.add("$c hello");
  }
  print("Output: $b");
}