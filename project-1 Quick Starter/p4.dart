void main()
{
  List<List<int>> abc=[[1,2,3],[4,5,6],[7,8,9]];

  List<List<int>> xyz=[[5,4,2],[3,6,7],[4,5,6]];

  List<List<int>> mno=[[0,0,0],[0,0,0],[0,0,0]];

  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
      mno[i][j]=abc[i][j]+xyz[i][j];
    }
  }
  for(int i=0;i<3;i++)
  {
      print(mno[i]);
  }
}