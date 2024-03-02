import 'package:flutter/material.dart';

class AllWidget extends StatefulWidget {
  const AllWidget({super.key});

  @override
  State createState() => _AllWidgetState();
}

class _AllWidgetState extends State<AllWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello, Vaibhav",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.qr_code_scanner, color: Colors.blue),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Text(
          "Add",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              child: const Text(
                "   You must know the code till the core...",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "  My Courses",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Text(
                    "See All..",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://pypl.github.io/PYPL/All.png",
                      //fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://www.theschoolrun.com/sites/theschoolrun.com/files/article_images/what_is_a_programming_language.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://builtin.com/sites/www.builtin.com/files/styles/og/public/2022-09/robot-code-robotics-robotic-programming-language.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "  Online Courses",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Text(
                    "See All..",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                          "https://tiermaker.com/images/chart/chart/programming-languages--32215/pythonpng",
                          //fit: BoxFit.fill,
                        ),
                      ),
                       Container(
                     height: 50,
                    width: 300,
                    color: Colors.blue,
                          child: ElevatedButton(
                            
                            onPressed: (){},
                            child: const Text("Book Now",style: TextStyle(color: Colors.blue,fontSize: 20),)),
                  ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://camo.githubusercontent.com/f74e065f47943d9a3ac69910c8015893660cf204f90562255fd530a8296278e5/68747470733a2f2f63646e2e6a7364656c6976722e6e65742f6e706d2f70726f6772616d6d696e672d6c616e6775616765732d6c6f676f732f7372632f6a6176617363726970742f6a6176617363726970742e706e67",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                     height: 50,
                    width: 300,
                    color: Colors.blue,
                          child: ElevatedButton(
                            
                            onPressed: (){},
                            child: const Text("Book Now",style: TextStyle(color: Colors.blue,fontSize: 20),)),
                  ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://camo.githubusercontent.com/f74e065f47943d9a3ac69910c8015893660cf204f90562255fd530a8296278e5/68747470733a2f2f63646e2e6a7364656c6976722e6e65742f6e706d2f70726f6772616d6d696e672d6c616e6775616765732d6c6f676f732f7372632f6a6176617363726970742f6a6176617363726970742e706e67",
                      fit: BoxFit.fill,
                    ),
                  ),

                       Container(
                     height: 50,
                    width: 300,
                    color: Colors.blue,
                          child: ElevatedButton(
                            
                            onPressed: (){},
                            child: const Text("Book Now",style: TextStyle(color: Colors.blue,fontSize: 20),)),
                  ),
                    ],),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "  Offline Courses",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Text(
                    "See All..",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://i.pinimg.com/736x/5c/f3/41/5cf3414bbe67723a8c03bd6340d7417b.jpg",
                      //fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://d2ds8yldqp7gxv.cloudfront.net/Blog+Explanatory+Images/Best+programming+language+to+learn+2.webp",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://i.pinimg.com/736x/5c/f3/41/5cf3414bbe67723a8c03bd6340d7417b.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
