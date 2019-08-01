import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colors;
  final IconData iconData;
  final Function onPressed;
  SocialIcon({this.colors, this.iconData, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.only(left: 14.0),
//      child: Container(
//        width: 45.0,
//        height: 45.0,
//        decoration: BoxDecoration(
//            shape: BoxShape.circle,
//            gradient: LinearGradient(colors: colors, tileMode: TileMode.clamp)),
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: BorderSide(color: Colors.green,width: 5)),
          constraints: BoxConstraints(minWidth: 50, minHeight: 50),
          onPressed: onPressed,
          child: Icon(iconData, color: Colors.green),
        ),
//      ),
    );
  }
}