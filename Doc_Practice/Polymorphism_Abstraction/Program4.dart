class Test {
  int? x;
  Test(this.x);

  void fun() {
    this.x = 99;
  }
}

class Test2 extends Test {
  int? x;
  Test2(this.x, int y) : super(y);

  void fun() {
    print(x);
    super.fun();
    print(x);
    print(super.x);
  }
}

void main() {
  Test2 obj = Test2(4, 6);
  obj.fun();
}

/*
OP: 
4
99
6

    Explaination : 
          when fun method will called 
          at that time it will print x from that class
          and then it will call parent fun at that time it will assigns value to x = 99
          and then print x the output will be latest.
          and when print super.x at that time it will prints the parent x 

          */
