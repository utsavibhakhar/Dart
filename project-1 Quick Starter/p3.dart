import 'dart:io';
void main()
{
  List<int> element=[];

  while(true)
  {
    print("press 1 for insert data");
    print("press 2 for delete data");
    print("press 3 for update data");
    print("press 4 for view data");
    print("Enter choice:");
    int choice=int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1:
        stdout.write("Enter elements:");
        int a=int.parse(stdin.readLineSync()!);
        element.add(a);
        print("Insert elements successfully");
      break;

      case 2:
        if(element.length>0)
        {
          print("Delete elements...");
        }
        for(int i=0;i<element.length;i++)
        {
          print(element[i]);
        }
        stdout.write("Enter elements:");
        int b=int.parse(stdin.readLineSync()!);
        if(b<0 || b>=element.length)
        {
          print("Invalid data...");
        }
        int delete=element.removeAt(b);
        print("Delete element...");
        break;

      case 3:
        if(element.length>0)
        {
          print("update elements...");
        }
        for(int i=0;i<element.length;i++)
        {
          print(element);
        }
        stdout.write("Enter index elements :");
        int c=int.parse(stdin.readLineSync()!);
        if(c<0 || c>=element.length)
        {
          print("Invalid data...");
        }
        stdout.write("Enter elements :");
        int newvalue=int.parse(stdin.readLineSync()!);
        element[c]=newvalue;
        print("Delete element...");
        break;

      case 4:
        for(int i=0;i<element.length;i++) 
        {
          print(element[i]);
        }
        break;

      default:
        print("Exit...");
    }
  }
}