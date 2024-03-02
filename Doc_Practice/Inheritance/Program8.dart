
class Parent {
  Parent() {
    print("In Parent Constructor");
  }
}

class Child extends Parent {
  Child() {
    super();
    print("In Child Constructor");
  }
}

void main() {
  Child obj = new Child();
}

/*
OP : 
      Error : 
            we cant call super() like this 
            it must have call method to makes object callable 
            then we can call like this
  */