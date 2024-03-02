class Test {
  int x = 30;
}

class Test2 extends Test {
  int x;
  Test2(this.x);

  void gun() {
    this.x = 8;
  }

  void fun() {
    print(this.x);
    print(super.x);
  }
}

void main() {
  Test2 obj = Test2(10);
  obj.gun();
  obj.fun();
}

/*
OP :
      8
      30

      Explaination : 
             here in the above code
             we can create object of child class at that time when we pass value it assigns to that child object x
             when we call gun function it will replace the value of x in that object.
             and when we call fun function it will print the Child object x value using this and 
             using super it will prints parent class x value.

             */ 