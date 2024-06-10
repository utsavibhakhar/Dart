import 'dart:io';

class student{
  int? rollno;
  String? name;
  String? course;

  student({required this.rollno,required this.name,required this.course});

  factory student.abc(Map<String,dynamic> mno){
    return student(rollno:mno['rollno'],name:mno['name'],course:mno['course']);
  }
}
void main()
{
  List<Map<String,dynamic>> xyz=[
    {
      'rollno':1,
      'name':"A",
      'course':"C",
    },
    {
      'rollno':2,
      'name':"B",
      'course':"C++",
    },
    {
      'rollno':3,
      'name':"C",
      'course':"C#",
    },
    {
      'rollno':4,
      'name':"D",
      'course':"PHP",
    },
    {
      'rollno':5,
      'name':"E",
      'course':"HTML",
    },
    {
      'rollno':6,
      'name':"F",
      'course':"CSS",
    },
    {
      'rollno':7,
      'name':"G",
      'course':"Dart",
    },
    {
      'rollno':8,
      'name':"H",
      'course':"Core Flutter",
    },
    {
      'rollno':9,
      'name':"I",
      'course':"Advance Flutter",
    },
    {
      'rollno':10,
      'name':"J",
      'course':"UI/UX",
    },
    {
      'rollno':11,
      'name':"K",
      'course':"Graphic Designer",
    },
    {
      'rollno':12,
      'name':"L",
      'course':"Front-end Developer",
    },
    {
      'rollno':13,
      'name':"M",
      'course':"Back-end Developer",
    },
    {
      'rollno':14,
      'name':"N",
      'course':"Web Desinger",
    },
    {
      'rollno':15,
      'name':"O",
      'course':"Web Developer",
    },
    {
      'rollno':16,
      'name':"P",
      'course':"Hacking",
    },
    {
      'rollno':17,
      'name':"Q",
      'course':"Flutter",
    },
    {
      'rollno':18,
      'name':"R",
      'course':"Figma",
    },
    {
      'rollno':19,
      'name':"S",
      'course':"Full Stack Developer",
    },
    {
      'rollno':20,
      'name':"T",
      'course':"Game Desinger",
    },
    {
      'rollno':21,
      'name':"U",
      'course':"Game developer",
    },
    {
      'rollno':22,
      'name':"V",
      'course':"Cyber Security",
    },
    {
      'rollno':23,
      'name':"W",
      'course':"Android Developer",
    },
    {
      'rollno':24,
      'name':"X",
      'course':"IOS Developer",
    },
    {
      'rollno':25,
      'name':"Y",
      'course':"AI & Machine Learning",
    },
    {
      'rollno':26,
      'name':"Z",
      'course':"IOT",
    },
    {
      'rollno':27,
      'name':"Utsavi",
      'course':"Painting",
    },
    {
      'rollno':28,
      'name':"Krishna",
      'course':"Dancing",
    },
    {
      'rollno':29,
      'name':"Dewangi",
      'course':"Travelling",
    },
    {
      'rollno':30,
      'name':"Chhaya",
      'course':"Singing",
    }
  ];

  List<student> poi=[];

  xyz.forEach((Map<String,dynamic> mno) {
      poi.add(student.abc(mno));
   });

   poi.forEach((student mno) { 
    print("Roll no: ${mno.rollno}");
    print("Name:${mno.name}");
    print("Course:${mno.course}");
   });
}