
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/icon.dart';
import 'package:flutter_svg/flutter_svg.dart';





class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}
class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body:
        SingleChildScrollView(
          child: Column(
            children: [
          SizedBox(height: size.height*0.8,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: KDefaultPadding * 3),
                    child: Column(children: [
                    Align(alignment:Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),onPressed: (){Navigator.pop(context);},),
                    ),
                      Spacer(),
                      IconCard(icon:"assets/icons/sun.svg"),
                      IconCard(icon:"assets/icons/icon_2.svg"),
                      IconCard(icon:"assets/icons/icon_3.svg"),
                      IconCard(icon:"assets/icons/icon_4.svg"),
                    ],),
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 30,
                            color: KPrimaryColor.withOpacity(0.20))
                      ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img.png"))),
                ),
              ],
            ),
          ),
              SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Angelica\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: KTextColor,letterSpacing: 1,fontSize: 20)),
                  TextSpan(
                      text: "Russia",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: KPrimaryColor.withOpacity(0.6))),
                ])),
                Spacer(),
                Text(
                  "\$440",
                  style: TextStyle(color: KPrimaryColor,fontSize: 18),
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: size.width / 2,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20))),
                    color: KPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ),
              Expanded(
                  child: FlatButton(
                onPressed: () {},
                child: Text("Description",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ))
            ],
          ),SizedBox(height: KDefaultPadding,)
        ],
    ),
        ));
  }
}
