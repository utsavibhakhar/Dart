class abc{
  List<int> sum;

  abc.u({required this.sum});

  int disp()
  {
    int res=0;
    for(int i=0;i<sum.length;i++)
    {
      res+=sum[i];
    }
    return res;
  }
}
void main()
{
  abc a=abc.u(sum:[1,2,3,4,5]);
  int ans=a.disp();
  print("Sum of all elements: $ans");
}