class Test {
  int x = 30;
  int y = 30;
}

class Test2 extends Test {
  int x;
  Test2(this.x);

  void gun() {
    this.x = 8;
    this.y = 19;
  }

  void fun() {
    print(super.x);
    print(super.y);
  }
}

void main() {
  Test2 obj = Test2(10);
  obj.gun();
  obj.fun();
}

/*
OP: 
    30
    19

    Explaination : 
            The Test class is inherited in the Test2 class 
            when we create object of Child class and pass value it will initialize value to in that object filed x
            and when we call gun function at that time it will assigns the vvalues to both fileds x and y bit 
            here y field is inherited from parent class so it will assigns the value to parent y filed.
            when we call fun function at that time it will prints
            the Parents values.
            */