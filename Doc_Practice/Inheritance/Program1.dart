class Test {
  int x = 10;
  Test(this.x);
}

class Test2 extends Test {
  Test2(super.x);
}

void main() {
  Test2 obj = Test2(10);
  Test obj2 = Test(30);
  obj.x = 19;

  print(obj.x);
  print(obj2.x);
}

/*
OP : 
    19
    30

    Explaination : 
        here Test class can be inherited in Test2 class
        when we careate object of Test2 class at that time we can pass value it will assign to thew parent 
        and when we create object of Test and pass value at that time it can assigns  to that object only 
        when we print that two values are separated of two objects.

        */