class College {
  // Declaring variables
  String? name;
  int? rollno;

// Overriden Method
  void stu_details(name, rollno) {
    this.name = name;
    this.rollno = rollno;
  }

  void display() {
    print("The student name:${name}");
    print("The student rollno: ${rollno}");
    print("The result is passed");
  }
}

class Student extends College {
// Overriding Method
  void stu_details(name, rollno) {
    this.name = name;
    this.rollno = rollno;
  }

  void show() {
    print("The student name:${name}");
    print("The student rollno: ${rollno}");

    print("The result is failed");
  }
}

void main() {
//Creating object of subclass
  Student st = Student();
  st.stu_details("Joseph", 101);
  st.show();

  print('');
// Creating object of superclass
  College cg = College();
  cg.stu_details("Jason", 102);
  cg.display();
}
