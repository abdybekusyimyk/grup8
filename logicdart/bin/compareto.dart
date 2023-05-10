void main(List<String> args) {
  Student student1 = Student(1, 'name1');
  Student student2 = Student(1, 'name2');

  if (student1.compareTo(student2) == 0) {
    print('birdei----');
  } else {
    print('bolokcho====');
  }
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
