import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/featured_plant.dart';
import 'package:plant_app/vase.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        backgroundColor: KPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              child: Stack(
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          left: KDefaultPadding,
                          right: KDefaultPadding,
                          bottom: 20 + KDefaultPadding),
                      height: size.height * 0.2 - 27,
                      decoration: BoxDecoration(
                          color: KPrimaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hi Uishopy!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Image.asset("assets/images/logo.png")
                        ],
                      )),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: KDefaultPadding),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search",contentPadding: EdgeInsets.all(10),
                            hintStyle:
                                TextStyle(color: KPrimaryColor.withOpacity(0.6)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.search)),
                      ),

                      ),
                  )
                    ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recomended",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  FlatButton(
                      color: KPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      child: Text(
                        "More",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            RecommendsPlant(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Plants",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  FlatButton(
                      color: KPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      child: Text(
                        "More",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            PlantCard(),
            SizedBox(height: KDefaultPadding,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: KDefaultPadding, right: KDefaultPadding),
        height: 70,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 30,
              color: KPrimaryColor.withOpacity(0.38))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/flower.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/user-icon.svg"))
          ],),
      ),
    );
  }
}
