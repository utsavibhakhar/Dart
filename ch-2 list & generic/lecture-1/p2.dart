import 'dart:io';
void main()
{
  stdout.write("Enter Size:");
  int a=int.parse(stdin.readLineSync()!);

  List<String> indianstate=[];
  for(int i=0;i<a;i++)
  {
    stdout.write("Enter Indian state:");
    String state=stdin.readLineSync()!;
    
    indianstate.add("$state");
  }
  print("List of Indian states: $indianstate");
}