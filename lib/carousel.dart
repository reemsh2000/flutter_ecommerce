import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatefulWidget {
  final List<String> ListImage;
   MyCarousel(this.ListImage);

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  CarouselController buttonCarouselController = CarouselController();


  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(height: 200.0,autoPlay: true),
          items: widget.ListImage.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 280,
                  // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(192, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: SizedBox(width: 260, child: Image.network(i)),
                );
              },
            );
          }).toList(),
        )
      ]);
}
