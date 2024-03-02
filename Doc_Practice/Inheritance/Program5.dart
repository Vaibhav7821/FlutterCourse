class Test {
  int x = 20;
  String str = "Core2web";

  void parentMethod() {
    print(x);
    print(str);
  }
}

class Test2 extends Test {
  int x = 10;
  String str = "Incubator";

  void childMethod() {
    print(x);
    print(str);
  }
}

void main() {
  Test2 obj = Test2();
  obj.parentMethod();
  obj.childMethod();
}
/*
OP : 
      10
      Incubator
      10
      Incubator

      Explaination : 
              in the above code parentMethod will be inherited in child class 
              and childMethod is of Child Class 
              and when we call both methods 
              at that time parentMethod will prints the nearest values.
              and child will prints the in that class fields.
              
              */