class Company {
  int? x;
  String? str;

  Company(this.x, {this.str = "Core2web"});

  void compInfo() {
    print(x);
    print(str);
  }
}

void main() {
  Company obj1 = new Company(100);
  Company obj2 = new Company(200, "Incubator");

  obj1.compInfo();
  obj2.compInfo();
}

/*
OP :
    Error : 
          too many positional arguments 1 allowed but 2 found

    Explaination : 

          At the parameter side when we give the default value in curly braces {}
          at that we cant pass argument of that type to that method

          here dart uses the Default Parameters concept 
*/  
