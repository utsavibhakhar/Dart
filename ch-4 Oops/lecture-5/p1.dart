import 'dart:io';
void main()
{
  String name="123";

  try{
    int sum=int.parse(name);
    print("Result $sum");
  }catch(FormatException)
  {
    print("Result does not show");
  }finally{
    print("Thanks...");
  }
}