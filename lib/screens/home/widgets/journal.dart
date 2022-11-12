import 'package:flutter/material.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/mood/widget/custom.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getJournal() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(10, 97, 97, 97),
            offset: Offset(1.0, 1.0),
            blurRadius: 5.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Journal Tips",
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(195, 85, 85, 85),
              ),
            ),
            addVertical(5),
            Text(
              '"20 more task to complete"',
              style: GoogleFonts.roboto(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Color(0x9BEC4343),
              ),
            ),
            addVertical(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Write Now",
                  style: GoogleFonts.roboto(
                    color: MyColors.primary,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
