class Test {
  int x;
  int? y;

  Test({required this.x, this.y});
}

class Test2 extends Test {
  Test2(int x, int y) : super(x: 88) {
    print(x);
  }

  void fun() {
    print(this.x);
    print(super.x);
  }
}

void main() {
  Test2 obj = Test2(19,20);
  obj.fun();
}

/*
OP : 
      19
      88
      88

      Explaination : 
            When we create object od Child class and pass values (19,20) at that time it will copies the 
            values in Test2's local variables and from that constructor the parents constructors will be callled
            and passes 88 value and it will initialize the value in Parent constructor
            and prints the local variable x value. 

            and when we call fun function at the time it will prints the Parent x value and using
            this.x also and super.x 
            */