import 'package:flutter/material.dart';
import 'home_page_body.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("John Tran"),
          new HomePageBody(),
        ],
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Center(
        child: new Text(title,
          style:const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w200,
            fontSize: 36.0
          ),
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            //const Color(0xFFF50057),
            const Color(0xFFF8BBD0),
            const Color(0xFFAD1457)
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.9, 0.0),
          stops: [0.0, 0.8],
          tileMode: TileMode.clamp
        ),
      ),
    );
  }
}
