<<<<<<< HEAD
import 'package:ecommerce_app_backend/constants/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
=======
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app_backend/constants/global_variables.dart';
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariables.carouselImages.map(
        (i) {
          return Builder(
            builder: (BuildContext context) => Image.network(
              i,
              fit: BoxFit.cover,
              height: 200,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 200,
      ),
    );
  }
}
