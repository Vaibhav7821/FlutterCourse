class Company {
  void companyName() {
    print("Google");
  }
}

class Employee extends Company {
  void companyName() {
    print("Apple");
  }
}

void main() {
  Company obj = Employee();
  obj.companyName();
}
/*
OP : 
      Apple

      Explaination ; 
              when parents reference and child object at that time 
              on that object childs method will be called.
*/