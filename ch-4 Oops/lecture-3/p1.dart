import 'dart:io';

class fact{
  int num;

  fact(int this.num);

  int setData(int n)
  {
    if(n<=1)   
      return 1;
    else{
      return n*setData(n-1);
    }
  }

  int getData(){
    return setData(num);
  }
}
void main()
{
  stdout.write("Enter number:");
  int num=int.parse(stdin.readLineSync()!);
  
  fact f=fact(num);

  int s=f.setData(num);
  int g=f.getData();
  print("Factorial number is: $g");
}