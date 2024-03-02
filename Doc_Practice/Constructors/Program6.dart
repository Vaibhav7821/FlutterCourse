

class Company {
  int? empCount;
  String? compName;

  Company({this.empCount, this.compName = "Deloitte"});

  void compInfo() {
    print(empCount);
    print(compName);
  }
}

void main() {
  Company obj1 = new Company(empCount: 100, compName: "Veritas");

  Company obj2 = new Company(compName: "Pubmatic", empCount: 200);

  obj1.compInfo();
  obj2.compInfo();
}

/*
OP :
    100
    Veritas
    200
    Pubmatic

    ***************

    Explaination : 
            Here in the above code named parametrs concept is used.
            we can give the default values also or we can change the sequence of 
            the aruments at the timem passing. 

*/
