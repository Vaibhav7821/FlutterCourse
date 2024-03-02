class Test {
  Test._private() {
    print("In Demo");
  }

  factory Test() {
    print("In Demo Factory");
    return Test._private();
  }
}

void main() {
  Test obj = new Test();
  Test obj1 = new Test();
  print(obj.hashCode);
  print(obj1.hashCode);
}

/*
OP : 
      In Demo Factory
      In Demo

      *********************

      Explaination :

            here in above code factory constructor concept is used.
            we cant create object of private constructor
            so factory constructor has access to create the object of private constrcutor

            and also it will returns the object of Child class private constructor.
            also we can achieve singleton design pattern using factory constructor. 
      */
