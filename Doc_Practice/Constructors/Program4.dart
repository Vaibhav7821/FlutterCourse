class Company {
  int empCount;
  String empName;

  Company(this.empCount, [this.empName = "Biencaps"]);

  void compInfo() {
    print(empCount);
    print(empName);
  }
}

void main() {
  Company obj1 = new Company(100);
  Company obj2 = new Company(200, "Pubmatic");

  obj1.compInfo();
  obj2.compInfo();
}

/*
OP : 
    100
    Biencaps
    200
    Pubmatic

    **************
    
    Explaination :

        In the above code, The optional parameters concept is used for passing parameters
        optional parameters means we can give the default values int paramenter side
        and when we cant pass that type of argument the it can takes that default value
        and when we pass at that it repplace that default value.
        
        And this concept in dart called as optional Parameters
*/
          
