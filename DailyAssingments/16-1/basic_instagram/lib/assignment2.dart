import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool like1 = false;
  bool like2 = false;
  bool like3 = false;
  bool like4 = false;
  bool like5 = false;
  bool like6 = false;
  bool like7 = false;

  bool book1 = false;
  bool book2 = false;
  bool book3 = false;
  bool book4 = false;
  bool book5 = false;
  bool book6 = false;
  bool book7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        //backgroundColor: Colors.purple,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      

        actions: const [
          Icon(
            Icons.favorite_border_outlined,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.message_outlined,
            size: 30,
          ),
        ],
      ),

      // body: ListView(
      //   children: [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child:
      //         Image.network(
      //           "https://images.unsplash.com/photo-1643239119967-1afb811745dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D&w=1000&q=80",
      //           width: double.infinity,
      //           //height: double.infinity,
      //         ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: (){},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child:
      //         Image.network(
      //           "https://images.unsplash.com/photo-1611944212129-29977ae1398c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGluc3RhZ3JhbSUyMGxvZ28lMjAzZHxlbnwwfHwwfHx8MA%3D%3D",
      //           width: double.infinity,
      //           //height: 370,
      //         ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: (){},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child:
      //         Image.network(
      //           "https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aW5zdGFncmFtJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D",
      //           width: double.infinity,
      //           //height: 370,
      //         ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: (){},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child:
      //         Image.network(
      //           "https://images.unsplash.com/photo-1611605698323-b1e99cfd37ea?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGluc3RhZ3JhbSUyMGxvZ298ZW58MHx8MHx8fDA%3D",
      //           width: double.infinity,
      //           //height: 370,
      //         ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: (){},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child:
      //         Image.network(
      //           "https://images.unsplash.com/photo-1611162616475-46b635cb6868?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5zdGFncmFtJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D",
      //           width: double.infinity,
      //           //height: 370,
      //         ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: (){},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child:
      //         Image.network(
      //           "https://images.unsplash.com/photo-1611605698335-8b1569810432?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aW5zdGFncmFtJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D",
      //           width: double.infinity,
      //           //height: 370,
      //         ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: (){},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),

      // ),

      body:
     
      SingleChildScrollView(

        child: Column(
          children: [
            
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                 const Divider(
                  thickness: 1,
                ),
                const SizedBox(height: 40,),
                const Divider(
                  thickness: 1,
                ),
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1611262588024-d12430b98920?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW5zdGFncmFtJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D",
                    width: double.infinity,

                    //height: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like1 = !like1;
                        });
                      },
                      icon: Icon(
                        like1
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: like1 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 210,
                    // ),
                    const Spacer(),

                    IconButton(
                      onPressed: () {
                        setState(() {
                          book1 = !book1;
                        });
                      },
                      icon: Icon(
                        book1
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_outlined,
                        color: book1 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1611605698335-8b1569810432?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aW5zdGFncmFtJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D",
                    width: double.infinity,
                    //height: 370,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like2 = !like2;
                        });
                      },
                      icon: Icon(
                        like2
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: like2 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 210,
                    // ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          book2 = !book2;
                        });
                      },
                      icon: Icon(
                        book2
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_outlined,
                        color: book2 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://helloseed.co.uk/static/4d26fec683d8a7cd5e563844faa5d7c7/6598c/alexander-shatov-niUkImZcSP8-unsplash-1-scaled-aspect-ratio-16-9-scaled.jpg",
                    width: double.infinity,
                    //height: 370,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like3 = !like3;
                        });
                      },
                      icon: Icon(
                        like3
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: like3 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 210,
                    // ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          book3 = !book3;
                        });
                      },
                      icon: Icon(
                        book3
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_outlined,
                        color: book3 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://media.istockphoto.com/id/1484931456/photo/social-media-notifications-icon.webp?b=1&s=170667a&w=0&k=20&c=x-W_9_lugd7r3YEhRCSayBPILikiqjk-k5zBxKMz5jU=",
                    width: double.infinity,
                    //height: 370,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like4 = !like4;
                        });
                      },
                      icon: Icon(
                        like4
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: like4 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 210,
                    // ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          book4 = !book4;
                        });
                      },
                      icon: Icon(
                        book4
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_outlined,
                        color: book4 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1611944212129-29977ae1398c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGluc3RhZ3JhbSUyMGxvZ28lMjAzZHxlbnwwfHwwfHx8MA%3D%3D",
                    width: double.infinity,
                    //height: 370,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like5 = !like5;
                        });
                      },
                      icon: Icon(
                        like5
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: like5 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 210,
                    // ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          book5 = !book5;
                        });
                      },
                      icon: Icon(
                        book5
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_outlined,
                        color: book5 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    width: double.infinity,
                    //height: 370,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like6 = !like6;
                        });
                      },
                      icon: Icon(
                        like6
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: like6 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 210,
                    // ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          book6 = !book6;
                        });
                      },
                      icon: Icon(
                        book6
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_outlined,
                        color: book6 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1665799871677-f1fd17338b43?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGluc3RhZ3JhbSUyMGxvZ28lMjAzZHxlbnwwfHwwfHx8MA%3D%3D",
                    width: double.infinity,
                    //height: 370,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like7 = !like7;
                        });
                      },
                      icon: Icon(
                        like7
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: like7 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 210,
                    // ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          book7 = !book7;
                        });
                      },
                      icon: Icon(
                        book7
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_outlined,
                        color: book7 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
          
            icon: Icon(Icons.search) ,
            label: 'Search',
          ),
        

          BottomNavigationBarItem(
            icon: Icon(Icons.person) ,
            label: 'Profile',
            

          ),
        ],
      ),
    );
  }
}
