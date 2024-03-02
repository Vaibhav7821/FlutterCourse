class Test {
  int x = 6;
  Test(){
    print("Test");
  }

  void printData() {
    print(x);
  }
}

class Test2 extends Test {
  int x = 9;
  Test2() {
    print("In Test2");
  }
}

class Child extends Test implements Test2 {
  int x = 7;
  void printData() {
    print(super.x);
    super.printData();
  } 
}

void main() {
  Child obj = Child();
  obj.printData();
}

/*
OP : 
      6
      7

      Explaination :
            In child class instance varibles of interface cannot come 
            

      */
