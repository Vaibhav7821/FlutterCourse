import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => ListViewDemoState();
}

class ListViewDemoState extends State<ListViewDemo> {

 List<List> players = [
    [
      "https://www.livemint.com/lm-img/img/2023/09/25/1600x900/TOPSHOT-CRICKET-IND-AUS-ODI-1_1695636304092_1695636326883.jpg",
      "https://www.sportsadda.com/static-assets/waf-images/9b/2e/48/16-9/nyy4uXTRVK.jpg?v=1.6&w=420%20420w",
      "https://www.sportsadda.com/static-assets/waf-images/6b/cd/ea/16-9/gAyc6U8Vb6.jpg?v=1.6&w=420%20420w"
    ],
    [
      "https://www.sportsadda.com/static-assets/waf-images/99/a3/5f/1-1/SsqgykGViP.jpg?v=1.6&w=1024",
      "https://assets.gqindia.com/photos/65264ff9fee7ce43edda07d9/master/w_1600%2Cc_limit/Muhammad-Siraj.jpg",
      "https://e0.365dm.com/23/11/1600x900/skysports-virat-kohli-india_6361312.jpg?20231116055010"
    ],
    [
      "https://c.ndtvimg.com/2023-06/iacn2g_virat-kohli-test-twitter_650x300_05_June_23.jpg",
      "https://www.bjsports.live/wp-content/uploads/2023/07/187-Shikhar-Dhawan-vs-Australia-in-2013-at-Mohali.jpg",
      "https://english.cdn.zeenews.com/sites/default/files/2016/12/19/556137-19-12-2016-test-gh11-o.jpg",
    ]
  ];

  List separatorList = ["OneDay Players", "T20Players", "testPlayers"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Cricket Players",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: separatorList.length,
        separatorBuilder: (BuildContext context, int index) {
        
          return Container(
            height: 10,
            width: double.infinity,
            color: Colors.black,
          );
        },
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(separatorList[index],
                  style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: players[index].length,
                itemBuilder: (context, ind) {
                  return Container(
                    height: 300,
                    width: 100,
                    margin: const EdgeInsets.all(40),
                    child: Image.network(players[index][ind],fit: BoxFit.fill,),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
