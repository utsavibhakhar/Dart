import 'dart:io';

void result(int a,int b,int c,[int d=0,int e=0])
{
  int sum=a+b+c+d+e;
  print("Total Marks is: $sum");
  
  double percentage=sum/5.0;
  print("percentage is: $percentage%");

  if(percentage>=40)
  {
    print("Pass");
  }
  else{
    print("Fail");
  }
}
void main()
{
  result(25,22,55,88);
}