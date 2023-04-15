import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinecourse/screens/screens.dart';
import 'package:onlinecourse/widgets/my_vertical_list.dart';

import '../widgets/my_horizontal_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const
                      CourseDetailScreen()),
                    );
                  },
                  child: Text(
                    'Master Class',
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return MyHorizontalList(
                  startcolor: 0xFF9288E4,
                  endcolor: 0xFF534EA7,
                  courseHeadline: 'Recommended',
                  coursetitle: 'UI/UX- Designer\nBeginner',
                  courseimage: 'assets/images/corse.png',
                );
              }
              ),
            ),
            SizedBox(height: 8,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Online Class',
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 8,),
                Text(
                  'From over 80 Lectures',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Color(0xFF9C9A9A),
                    fontWeight: FontWeight.w500,),
                ),
              ],
            ),
            SizedBox(height: 8,),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return MyVerticalList(courseimage: 'assets/images/course2.png', coursetitle: 'Flutter Developer', courseDuration: '8 Hours', courseRating:3.0);
              }
            ),
          ],
      ),),
    );
  }
}
