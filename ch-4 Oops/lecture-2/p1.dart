import 'dart:io';
int cube(int n)
{
  return n*n*n;
}
void main()
{
  stdout.write("Enter number:");
  int n=int.parse(stdin.readLineSync()!);
  int res=cube(n);
  print("result:$res");
}
