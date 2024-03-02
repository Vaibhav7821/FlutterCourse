abstract class Demo1 {
  factory Demo1() {
    return Demo2();
  }
}

class Demo2 implements Demo1 {
  Demo2() {
    print("Demo2");
  }
}

void main() {
  Demo1 obj = new Demo1();
}

/*
OP : 
      Demo2


      Explaination : 
            here we cannot creates the object of abstract class 
            so using factory we can create the childs class object 
                       
*/