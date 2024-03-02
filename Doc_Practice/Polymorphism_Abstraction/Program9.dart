abstract class Test {
  void build();
}

class Test2 extends Test {
  @override
  void build() {
    super.build();
  }
}

/*
OP : 
    Error : 
          superclass has no method named 'build';

    Explaination : 
          In abstract class absrtract method cant access using super
        

*/
