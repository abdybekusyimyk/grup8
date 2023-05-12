void main(List<String> args) {
  Student student1 = Student(1, 'a');
  Student student2 = Student(2, 'b');
  Student student3 = Student(3, 'd');
  Student student4 = Student(4, 'e');
  Student student5 = Student(5, 'f');
  Student student6 = Student(6, 'g');

  List list = [student1, student2, student3, student4, student5, student6];

  Student myStudent = Student(6, 'g');

  bool ushulJerdebarby = false;

  list.forEach((ozgormo) {
    if (ozgormo.compareTo(myStudent) == 0 && ozgormo.name == myStudent.name) {
      ushulJerdebarby = true;
    }
  });

  print(ushulJerdebarby);
}

class Student implements Comparable<Student> {
  int id;
  String name;
  Student(this.id, this.name);

  @override
  int compareTo(Student other) {
    return id - other.id;
  }
}
