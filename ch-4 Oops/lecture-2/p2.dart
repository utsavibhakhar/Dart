import 'dart:io';

void unique()
{
  List<String> abc=["Utsavi","Dewangi","Krishna","Utsavi","Dewangi"].toSet().toList();

  print(abc);
}
void main()
{
  unique();
}