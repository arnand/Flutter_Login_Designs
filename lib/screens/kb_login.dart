import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KbLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
//                height: ScreenUtil.getInstance().setHeight(800),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: loginForm(),
              ),
            ),
            Positioned(
              top:  ScreenUtil.getInstance().setHeight(600),
              left:  ScreenUtil.getInstance().setHeight(675),
              child: FloatingActionButton(
                  backgroundColor: Colors.lightBlue
                  ,onPressed: null,
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginForm() {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 50, top: 75),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: .6,
            ),
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(75),
          ),
          Text(
            "Email or Username",
            style: TextStyle(
              fontSize: ScreenUtil.getInstance().setSp(20),
              color: Colors.black.withOpacity(.4),
              fontWeight: FontWeight.normal,
              letterSpacing: .5,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "abc@gmail.com",

                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil.getInstance().setSp(20))),
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(50),
          ),
          Text(
            "Password",
            style: TextStyle(
              fontSize: ScreenUtil.getInstance().setSp(20),
              color: Colors.black.withOpacity(.4),
              fontWeight: FontWeight.normal,
              letterSpacing: .5,
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "*********",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil.getInstance().setSp(20))),
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(50),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Forgot Password?",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(20),
                color: Colors.black.withOpacity(.4),
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline,
                letterSpacing: .5,
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(100),
          ),
        ],
      ),
    );
  }
}

class McTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width, 0.0);

/*
    var leftEndPoint = Offset(size.width * 0.1, size.height * 0.7);
    var leftCurveControl = Offset(0.0, size.height * 0.65);
    path.quadraticBezierTo(leftCurveControl.dx, leftCurveControl.dy,
        leftEndPoint.dx, leftEndPoint.dy);

    path.lineTo(size.width * 0.9, size.height * 0.96);

    var rightEndPoint = Offset(size.width, size.height * 0.9);
    var rightCurveControl = Offset(size.width, size.height);
    path.quadraticBezierTo(rightCurveControl.dx, rightCurveControl.dy,
        rightEndPoint.dx, rightEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);*/

    path.close();
    return path;

//  var path = new Path();
//    path.moveTo(0.0, size.height * 0.6);
//    path.lineTo(0.0, size.height);
//    path.lineTo(size.width, size.height);
//    path.lineTo(size.width, size.height * 0.95);
//    path.close();
//    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class McClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0.0, size.height * 0.5);

    var leftEndPoint = Offset(size.width * 0.1, size.height * 0.7);
    var leftCurveControl = Offset(0.0, size.height * 0.65);
    path.quadraticBezierTo(leftCurveControl.dx, leftCurveControl.dy,
        leftEndPoint.dx, leftEndPoint.dy);

    path.lineTo(size.width * 0.9, size.height * 0.96);

    var rightEndPoint = Offset(size.width, size.height * 0.9);
    var rightCurveControl = Offset(size.width, size.height);
    path.quadraticBezierTo(rightCurveControl.dx, rightCurveControl.dy,
        rightEndPoint.dx, rightEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;

//  var path = new Path();
//    path.moveTo(0.0, size.height * 0.6);
//    path.lineTo(0.0, size.height);
//    path.lineTo(size.width, size.height);
//    path.lineTo(size.width, size.height * 0.95);
//    path.close();
//    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
}
