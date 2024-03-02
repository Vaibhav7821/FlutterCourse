class Employee {
  int? empId;
  String? empName;

  Employee() {

  }
  Employee(int empId, String empname) {

  }
}

void main() {
  Employee obj = new Employee();
}

/*
OP:
    Error :
          Cant use Employee more than once it will already defined.
          In the above code,
          in dart same name of constructors cant aloowed
          we have to give different name for that constructors.
          like Employee.x()
          Employee.y()

*/
