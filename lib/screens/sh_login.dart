import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 800, height: 1280, allowFontScaling: true);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: ScreenUtil.getInstance().setWidth(double.infinity),
              height: ScreenUtil.getInstance()
                  .setHeight(ScreenUtil.getInstance().height / 2.5),
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: HeaderTopLayer(),
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(double.infinity),
                      height: ScreenUtil.getInstance()
                          .setHeight(ScreenUtil.getInstance().height / 2.5),
                      color: Colors.blue,
                    ),
                  ),
                  ClipPath(
                    clipper: HeaderBottomlayer(),
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(double.infinity),
                      height: ScreenUtil.getInstance()
                          .setHeight(ScreenUtil.getInstance().height / 2.5),
                      color: Colors.blueAccent.withOpacity(0.25),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      onPressed: null,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.domain,
                          color: Colors.blue,
                          size: 100,
                        ),
                      ),
                      shape: CircleBorder(side: BorderSide(color: Colors.white,width: 1.0)),
                    ),
                  ),
                ],
              ),

            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: ScreenUtil.getInstance().width * 0.1,
                    right: ScreenUtil.getInstance().width * 0.1,
                  ),
                  child: Column(
                  mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: TextFormField(
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: ScreenUtil.getInstance().setSp(25),
                          ),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Theme.of(context).primaryColor,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: "Username"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: TextFormField(
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: ScreenUtil.getInstance().setSp(25),
                          ),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Theme.of(context).primaryColor,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.blue)),
                              labelText: "Password"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 35.0),
                        child: Container(
                          width: ScreenUtil.getInstance().width * 0.25,
                          child: RawMaterialButton(
                              padding: EdgeInsets.all(15),
                              fillColor: Theme.of(context).primaryColor,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil.getInstance().setSp(25),
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: Colors.blueAccent),
                              ),
                              onPressed: null),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "FORGOT PASSWORD ?",
                          style: TextStyle(
                            letterSpacing: 01.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).primaryColor,
                            fontSize: ScreenUtil.getInstance().setSp(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50, bottom: 10),
                        child: Text(
                          "or",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: ScreenUtil.getInstance().setSp(20),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RawMaterialButton(
                            fillColor: Color(0xFF102397),
                            constraints:
                                BoxConstraints(minWidth: 50.0, minHeight: 50.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: null,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: RawMaterialButton(
                              fillColor: Color(0xFFff355d),
                              constraints:
                                  BoxConstraints(minWidth: 50.0, minHeight: 50.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              onPressed: null,
                              child: Icon(
                                Icons.insert_photo,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: RawMaterialButton(
                              fillColor: Color(0xFF17ead9),
                              constraints:
                                  BoxConstraints(minWidth: 50.0, minHeight: 50.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              onPressed: null,
                              child: Icon(
                                Icons.shop_two,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: RawMaterialButton(
                              fillColor: Color(0xFF005bea),
                              constraints:
                                  BoxConstraints(minWidth: 50.0, minHeight: 50.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              onPressed: null,
                              child: Icon(
                                Icons.domain,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 50, bottom: 10),
                        child: RichText(
                          text: TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'New User?'),
                              TextSpan(text: ' Sign Up', style: new TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor)),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderTopLayer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * .8);

    var lep = Offset(size.width * 0.5, size.height * 0.8);
    var lcp = Offset(size.width * 0.25, size.height * 0.7);
    path.quadraticBezierTo(lcp.dx, lcp.dy, lep.dx, lep.dy);

    var rep = Offset(size.width, size.height * 0.8);
    var rcp = Offset(size.width * 0.85, size.height * 0.9);
    path.quadraticBezierTo(rcp.dx, rcp.dy, rep.dx, rep.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class HeaderBottomlayer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * .8);

    var lep = Offset(size.width * 0.5, size.height * 0.85);
    var lcp = Offset(size.width * 0.25, size.height * 0.75);
    path.quadraticBezierTo(lcp.dx, lcp.dy, lep.dx, lep.dy);

    var rep = Offset(size.width, size.height * 0.9);
    var rcp = Offset(size.width * 0.85, size.height);
    path.quadraticBezierTo(rcp.dx, rcp.dy, rep.dx, rep.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
