import 'dart:io';

void main()
{
  List<String> abc=[];

  stdout.write("Enter Size:");
  int n=int.parse(stdin.readLineSync()!);

  for(int i=0;i<n;i++)
  {
    stdout.write("Enter elements:");
    String m=stdin.readLineSync()!;
    abc.add(m);
  }

  Set<String> u=abc.toSet();
  List<String> p=u.toList();

  print(p);
}