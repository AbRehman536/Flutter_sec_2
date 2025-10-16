import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullCoverage extends StatelessWidget {
  const FullCoverage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Full Coverage",style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w700,
            color: Color(0xff27272E),
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/first.png")),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/second.png")),
              title: Text("A protester carries the Confederate flag after breaching US Capitol security",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff323232),
              ),),
              subtitle: Text("5 hours ago    |     News18",style: GoogleFonts
                .poppins(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                color: Color(0xff464646B2),
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.thumb_up),
              Icon(Icons.bookmark),
              Icon(Icons.copy),
              Icon(Icons.share),
            ],),
            Divider(height: 5,),
            SizedBox(height: 10,),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/first.png")),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/second.png")),
              title: Text("A protester carries the Confederate flag after breaching US Capitol security",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff323232),
                ),),
              subtitle: Text("5 hours ago    |     News18",style: GoogleFonts
                  .poppins(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                color: Color(0xff464646B2),
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.thumb_up),
                Icon(Icons.bookmark),
                Icon(Icons.copy),
                Icon(Icons.share),
              ],),
          ],),
        ),
      ),
    );
  }
}
