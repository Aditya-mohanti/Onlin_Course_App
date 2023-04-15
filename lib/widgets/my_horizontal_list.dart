import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyHorizontalList  extends StatelessWidget {

  final int endcolor,startcolor;
  final String courseHeadline,coursetitle,courseimage;


  MyHorizontalList({
      required this.endcolor,
      required this.startcolor,
      required this.courseHeadline,
      required this.coursetitle,
      required this.courseimage
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 26,
      ),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(1,0.0),
            colors: <Color>[
              Color(startcolor),
              Color(endcolor),
            ]),
        ),
        child: Stack(
          children: [
            Positioned(top:14,
            left: 10,
            child: Container(
              height: 39,
              decoration: BoxDecoration(
                color: Color(0xFFAFA8EE),
                borderRadius: BorderRadius.circular(36),
              ),
              child: Text(
                courseHeadline,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ),
            Positioned(
              top:80,
              left: 14,
              child: Text(
                coursetitle,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),),
            Positioned(
              right:0,
              bottom: 0,
              child:Image.asset(
                courseimage,
                scale: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
