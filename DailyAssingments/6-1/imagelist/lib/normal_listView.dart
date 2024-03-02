import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  const ImageList({super.key});

  @override
  State createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  List<String> imgList = [
    "https://www.brandsynario.com/wp-content/uploads/2021/04/Luxury-Cars.png",
    "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/rolls_royce_phantom_top_10.jpg?itok=XjL9f1tx",
    "https://car-images.bauersecure.com/wp-images/3679/best_luxury_car.jpg",
    "https://car-images.bauersecure.com/wp-images/3679/rr_phantom_01.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image List Demo"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: ((context, index) {
          return Container(
            height: 500,
            width: 500,
            margin: const EdgeInsets.all(20),
            child: Image.network(
              fit : BoxFit.fill,
              imgList[index],
            ),
          );
        }),
      ),
    );
  }
}
