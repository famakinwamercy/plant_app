import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';



class IconCard extends StatelessWidget {
  const IconCard({Key? key,required this.icon}) : super(key: key);
    final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(KDefaultPadding / 2),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: KBackgroundColor, borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(offset: Offset(0, 10), blurRadius: 30,
                color: KPrimaryColor.withOpacity(0.20))
          ]),
      child: SvgPicture.asset(icon,),);

  }
}
