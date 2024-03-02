class Test {
  void fun() {
    print("Test Class");
  }

  static void gun() {
    print("In static test");
  }
}

class Test2 extends Test {
  @override
  int fun() {
    super.fun();
    return 10;
  }

  @override
  int gun() {
    print("In test2 gun");
    super.gun();
  }
}

void main() {
  Test2 obj = Test2();
  obj.fun();
}

/*
OP : 
    Error : 
          superclass has no method named gun
          and also int gun return value is must.


    Explaination ; 
          parent class has static method gun 
          so it cant be oerride in child class 
          and we cannot call using super because static methods are called using only Class name
          
*/
