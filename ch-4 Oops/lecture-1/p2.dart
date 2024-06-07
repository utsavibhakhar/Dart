import 'dart:io';

class StudentManager {
  List<Map<String, dynamic>> students = [];

  void addStudent() {
    print('Enter Student ID:');
    int id = int.parse(stdin.readLineSync()!);

    print('Enter Student Name:');
    String name = stdin.readLineSync()!;

    print('Enter Student Age:');
    int age = int.parse(stdin.readLineSync()!);

    print('Enter Student Standard:');
    String standard = stdin.readLineSync()!;

    print('Enter Student Mobile:');
    String mobile = stdin.readLineSync()!;

    students.add({
      'id': id,
      'name': name,
      'age': age,
      'standard': standard,
      'mobile': mobile,
    });
    print('Student added successfully.');
  }

  void getStdViseData() {
    print('Enter the Standard to search:');
    String standard = stdin.readLineSync()!;

    for (int i = 0; i < students.length; i++) {
      if (students[i]['standard'] == standard) {
        print('ID: ${students[i]['id']}, Name: ${students[i]['name']}, Age: ${students[i]['age']}, Standard: ${students[i]['standard']}, Mobile: ${students[i]['mobile']}');
      }
    }
  }

  void getIdViseData() {
    print('Enter the Student ID to search:');
    int id = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < students.length; i++) {
      if (students[i]['id'] == id) {
        print('ID: ${students[i]['id']}, Name: ${students[i]['name']}, Age: ${students[i]['age']}, Standard: ${students[i]['standard']}, Mobile: ${students[i]['mobile']}');
        return;
      }
    }
    print('Student ID not found.');
  }

  void editStudent() {
    print('Enter the Student ID to edit:');
    int id = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < students.length; i++) {
      if (students[i]['id'] == id) {
        print('Enter new Student Name:');
        students[i]['name'] = stdin.readLineSync()!;

        print('Enter new Student Age:');
        students[i]['age'] = int.parse(stdin.readLineSync()!);

        print('Enter new Student Standard:');
        students[i]['standard'] = stdin.readLineSync()!;

        print('Enter new Student Mobile:');
        students[i]['mobile'] = stdin.readLineSync()!;

        print('Student details updated successfully.');
        return;
      }
    }
    print('Student ID not found.');
  }

  void deleteStudent() {
    print('Enter the Student ID to delete:');
    int id = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < students.length; i++) {
      if (students[i]['id'] == id) {
        students.removeAt(i);
        print('Student deleted successfully.');
        return;
      }
    }
    print('Student ID not found.');
  }

  void menu() {
    while (true) {
      print('Press 1 to get Standard-wise Data');
      print('Press 2 to get ID-wise Data');
      print('Press 3 to insert Student Data');
      print('Press 4 to edit Student Details');
      print('Press 5 to delete Student Data');
      print('Press 0 to Exit');

      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          getStdViseData();
          break;
        case 2:
          getIdViseData();
          break;
        case 3:
          addStudent();
          break;
        case 4:
          editStudent();
          break;
        case 5:
          deleteStudent();
          break;
        case 0:
          return;
        default:
          print('Invalid choice. Please try again.');
      }
    }
  }
}
void main() {
  StudentManager manager = StudentManager();
  manager.menu();
}
