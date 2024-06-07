import 'dart:io';

void text({required size,required String textStyle,required String textAlign})
{
  print("size:$size");
  print("Textstyle: $textStyle");
  print("TextAlign:$textAlign");
}
void main()
{
  text(size: 20, textStyle: "bold", textAlign: "center");
}