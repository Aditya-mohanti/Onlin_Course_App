import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyVerticalDetailList extends StatefulWidget {
  const MyVerticalDetailList({Key? key}) : super(key: key);

  @override
  State<MyVerticalDetailList> createState() => _MyVerticalDetailListState();
}

class _MyVerticalDetailListState extends State<MyVerticalDetailList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 12),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Color(0xFF3E3A6D),
        ),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/images/vertdetail.png'),
                ),
              ),
            ),
            Expanded(child:
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                children: [
                  Text('Introduction Design Graphic for Beginner',
                style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16,
                ),
                  )]
              ),
            ),
            ),
          ],
        ),
      ),
    ) ;
  }
}
