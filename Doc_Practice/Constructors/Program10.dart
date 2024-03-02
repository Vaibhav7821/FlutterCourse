class Demo {
  Demo() {
    print("In demo");
  }

  factory Demo() {
    print("In demo Factory");
    return Demo();
  }
}

void main() {
  Demo obj = new Demo();
}

/*
OP : 
      Error : 
          same name of constructors are not allowed in dart.

      Explaination : 
            In tha dart same name of constructors are not allowed.
            try to give different name to constructors.
*/