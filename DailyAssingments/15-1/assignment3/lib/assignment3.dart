import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  final List<String> imageList = [
    'https://imgd.aeplcdn.com/1280x720/n/cw/ec/115871/mt-15-v2-right-side-view.jpeg?isig=0&q=100',
    'https://i.pinimg.com/originals/41/f0/1a/41f01a375d43c4d2b6d3f34db987be6d.jpg',
    'https://autoexchange.com.sg/cdn/shop/products/IMG_20220621_135702_319_1024x1024@2x.jpg?v=1656299814',
    'https://shop.yamaha-motor-india.com/cdn/shop/products/METALLICBLACK_312f6ed1-ab19-478d-b7b5-ac97de82d66b_800x.webp?v=1691155857',
  ];
  int? imgIndex = 0;
  int count = 0;

  void _showNextImage() {
    setState(() {
      if (imageList.length == count+1) {
        imgIndex = 0;
        count = 0;
      }
      count++;
      imgIndex = imgIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '***************** Display Images *******************',
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              imageList[imgIndex!],
              height: 400,
              width: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _showNextImage,
              child: const Text('Next'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    imgIndex = 0;
                  });
                },
                child: const Text('Reset'))
          ],
        ),
      ),
    );
  }
}
