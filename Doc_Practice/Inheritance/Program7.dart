class Demo1 {
  int x;
  Demo1(this.x);
}

class Demo2 extends Demo1 {
  Demo2(super.x);

  void fun() {
    print(x);
  }
}

void main() {
  Demo1 obj = Demo2(10);
  obj.fun();
}

/*
OP : 
    Error : 
        method fun is not defined for the Demo1 class 
        as per java when we creates object Child and reference of Parent the
        at that time we can call only those methods that will be present in Parent class 
*/