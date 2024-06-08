import 'dart:io';

class book{
  int book_id;
  String title;
  String author;

  //default constructor
  book({this.book_id=0,this.title="",this.author=""});

  //parameterarized constructor
  book.parameterized(int this.book_id,String this.title,String this.author);

  void getData(){
    print("Book id: $book_id");
    print("Title: $title");
    print("Author: $author");
  }
}
void main()
{
  book b=book();
  //parameterarized constructor
  book res=book.parameterized(1,"abc","xyz");
  res.getData();

  //default constructor
  book ans=book(book_id: 2,title: "mno",author: "pqr");
  ans.getData();
}