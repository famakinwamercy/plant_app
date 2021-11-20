import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlant(image:"assets/images/bottom_img_1.png",press:(){}
          ),
          FeaturedPlant(image:"assets/images/bottom_img_2.png",press:(){}
          )
        ],
      ),
    );
  }
}

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({Key? key, required this.image, required this.press})
      : super(key: key);
  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: KDefaultPadding,
            top: KDefaultPadding / 2,
            bottom: KDefaultPadding),
        width: size.width * 0.8,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
