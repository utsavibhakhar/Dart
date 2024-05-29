import 'dart:io';
void main()
{
  Map emp={};
  for(int i=1;i<=3;i++)
  {
    stdout.write("Enter id:");
    int id=int.parse(stdin.readLineSync()!);
    stdout.write("Enter name:");
    String name=stdin.readLineSync()!;
    stdout.write("Enter age:");
    int age=int.parse(stdin.readLineSync()!);
    stdout.write("Enter salary:");
    int salary=int.parse(stdin.readLineSync()!); 

    Map<String,dynamic> employee={'id':id, 'name':name, 'age':age, 'salary':salary};
    emp[i]=employee;
  }
  print(emp);
}