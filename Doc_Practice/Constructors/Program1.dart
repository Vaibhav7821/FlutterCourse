

class Test {
  final int x;
  final int y;

  const Test(this.x, this.y){
    print("In Constant Consturctor");
  }
}

void main(){
  Test obj = Test(10,20);
  print(obj.x);
}

/*
OP: 
  Error:
      in the above code constant constructor cant have body,
      either remove the const keyword or the body

  */ 
