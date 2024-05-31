import 'dart:io';
void main()
{
  List abc=[1,-2,3,4,-5];
  List negative=[];

  print("List");
  print(abc);
  print("negative elements...");
  
  for(int i=0;i<abc.length;i++)
  {
    if(abc[i]<0)
    {
      negative.add(abc[i]);
    }
  }
  print(negative);
}