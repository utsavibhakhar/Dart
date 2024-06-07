import 'dart:io';

class Distance 
{
  int feet=0;
  int inch=0;

  void setData() 
  {
    stdout.write("Enter Feet:");
    feet = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Inch:");
    inch = int.parse(stdin.readLineSync()!);
  }

  void getData() 
  {
    print("Feet: ${this.feet}");
    print("Inch: ${this.inch}");
  }

  void result() 
  {
    if (inch >= 12) 
    {
      feet++;
      inch-=12;
    }
  }
}
void main() 
{
  Distance d1 = Distance();

  d1.setData(); 
  d1.result();
  d1.getData();
}
