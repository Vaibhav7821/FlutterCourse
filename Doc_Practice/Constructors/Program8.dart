
class Player {
  int? jerNo;
  String? pName;

  const Player(this.jerNo, this.pName);
}

void main(){
  Player obj = const Player(45,"Rohit");
}
/*

OP:
      Error : 
            In the const constructor the varialbles are must be deaclared as final
*/