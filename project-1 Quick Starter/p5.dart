import 'dart:io';
void main()
{
  List<List<int>> abc=[
    [1,2,3],
    [4,5,6],
    [7,8,9]];

  while(true)
  {
    print("press 1 for sum of all elements");
    print("press 2 for specific row");
    print("press 3 for specific column");
    print("press 4 for diagonal elements");
    print("press 5 for antidiagonal elements");
    print("press 0 for exit");
    print("Enter choice:");
    int choice=int.parse(stdin.readLineSync()!);
    switch(choice)
    {
      case 1:
        int sum = 0;
        for (int i = 0; i < 3; i++) 
        {
          for (int j = 0; j <3; j++) 
          {
            sum += abc[i][j];
          }
        }
        print("Sum of all elements: $sum");
        break;

      case 2:
      stdout.write("Enter row number (0-2): ");
        int row = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < abc.length; i++) 
        {
          sum += abc[row][i];
        }
        print("Sum of row: $sum");
        break;
    
      case 3:
      int sum=0;
      stdout.write("Enter column:");
      int column=int.parse(stdin.readLineSync()!);

      for(int i=0;i<abc.length;i++)
      {
          sum+=abc[column][i];
      }
      print("Sum of column: $sum");
    break;

      case 4:
      int sum=0;

      for(int i=0;i<abc.length;i++)
      {
          sum+=abc[i][i];
      }
      print("$sum");
    break;

      case 5:
      int sum=0;

      for(int j=0;j<abc.length;j++)
      {
          sum+=abc[j][j];
      }
      print("$sum");
      break;

      case 0:
      print("Exit...");
      return;
      break;

      default:
      print("Invalid choice...");
      return;
  }
  }
}