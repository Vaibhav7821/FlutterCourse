abstract class Test {
  int x;
  Test(this.x) {
    print("In Constructor");
  }

  void fun() {
    print("Fun");
  }

  void gun();
}

class Test2 extends Test {
  Test2(super.x);

  void gun() {
    print("In Gun");
  }
}

void main() {
  Test2 obj = new Test2(10);
  obj.fun();
  obj.gun();
}

/*
OP : 
    In Constructor
    Fun
    In Gun

    Explaination :
          abstract method has to give body in child 
          
*/ 
