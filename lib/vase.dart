import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/details_screen.dart';

class RecommendsPlant extends StatelessWidget {
  const RecommendsPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Vase(image:"assets/images/image_1.png",title:"Samantha",country:"Russia",price: 440,press: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen()));
          },
          ),
          Vase(image:"assets/images/image_2.png",title:"Angelica",country:"Russia",price: 440,press: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen()));
          },
          ),
          Vase(image:"assets/images/image_3.png",title:"Samantha",country:"Russia",price: 440,press: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen()));
          },
          ),
        ],
      ),
    );
  }
}

class Vase extends StatelessWidget {
  const Vase({Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.press,
    required this.price}) : super(key: key);
  final String image;
  final String title;
  final String country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      GestureDetector(onTap: press,
        child: Container(margin: EdgeInsets.only(left: KDefaultPadding,
            top: KDefaultPadding/2,bottom: KDefaultPadding),
          width: size.width *0.4,
          child: Column(
            children: [
              Image.asset(image ),
              Container(
                height: 40,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: KPrimaryColor.withOpacity(0.20))
                ]),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "$title\n",
                              style:
                              TextStyle(color: Colors.black45, fontSize: 10)),
                          TextSpan(
                              text: "$country",
                              style: TextStyle(
                                  color: KPrimaryColor.withOpacity(0.5)))
                        ])),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: TextStyle(color: KPrimaryColor.withOpacity(0.6)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
