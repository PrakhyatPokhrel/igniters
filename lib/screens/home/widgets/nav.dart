import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/mood/widget/custom.dart';

Widget getNav() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "March 4th",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 139, 139, 139),
              ),
            ),
            addVertical(5),
            Text(
              "Welcome Narayan!",
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                letterSpacing: .3,
                color: MyColors.primary,
              ),
            ),
          ],
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            'assets/images/profile.jpg',
            fit: BoxFit.cover,
          ),
        )
      ],
    ),
  );
}
