import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
class MyVerticalList extends StatelessWidget {
  final String courseimage,coursetitle,courseDuration;
  final double courseRating;

  MyVerticalList({
    required this.courseimage,
    required this.coursetitle,
    required this.courseDuration,
    required this.courseRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 8,
      ),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width*0.13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF3E3A6D),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 13,
                    offset: Offset(0,4),
                  )
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26,bottom: 19),
              child: Row(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(courseimage),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(coursetitle,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,),
                        ),
                        Text(courseDuration,
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            color: Color(0xFF8C8CBC),
                            fontWeight: FontWeight.w400,),
                        ),
                        RatingBar.builder(
                          initialRating: courseRating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1),
                          itemBuilder:(context,_)=>const Icon(Icons.star,
                        color: Color(0xFFF4C465),
                        ),
                          onRatingUpdate: (rating){
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
