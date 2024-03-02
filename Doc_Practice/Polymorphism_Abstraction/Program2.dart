class Demo {
  void fun();
}

class Demo1 implements Demo {
  void fun() {}
}

void main() {
  Demo obj = Demo1();
}
/*
OP : 
    Error: 
          Demo class has to give body to the method fun or marks abstract

    Explaination : 
        concrete class has must body to its methods 
        */
