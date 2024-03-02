class Test {
  int? x;

  Test(this.x) {
    print("In test");
  }
}

class Test2 extends Test {
  int? y;

  Test2(this.y, int x) : super(x);
}

class Test3 extends Test2 {
  int? z;
  Test3(this.z, int y, int x) : super(y, x) {
    print("In Test3");
  }
}

void main() {
  Test3 obj = Test3(10,20,30);
}

/*
OP : 
      In test
      In Test3

      Explaination : 
            When we create object of Test3 and pass arguments at that time Test3 constructor can copy that values in it 
            in Test3 z value will stored and 20 and 30 values will be pass to the Test2 construcotr because Test2 is parent of Test3
            and 30 value will pass to the Test constructor and initilize the value x to field x

            this is concept of Constructor chaining.
*/
