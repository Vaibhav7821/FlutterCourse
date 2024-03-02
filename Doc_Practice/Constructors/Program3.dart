class Demo {
  final int? x;
  final String? str;

  const Demo(this.x, this.str);
}

void main() {
  Demo obj1 = const Demo(10, "Core2web");
  print(obj1.hashCode);

  Demo obj2 = const Demo(10, "Biencaps");

  print(obj2.hashCode);
}
/*
OP :
396746865
513787238

Explaination:

    In the above code hashcode two objects are different,
    because the passing arguments for const object are different so it can make two separate objects.
    but when we pass same arguments when we are creating object of that class at that it will makes same object for bith

    so the const constructor is used
*/
