void main()
{
  List<int> abc=[1,2,3,4,5];

  int max=0;
  for(int i=0;i<abc.length;i++)
  {
    if(abc[i]>max)
    {
      max=abc[i];
    }
  }
  print("$max");
}