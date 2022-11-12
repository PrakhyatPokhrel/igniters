import 'package:flutter/material.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/mood/widget/custom.dart';
import 'package:google_fonts/google_fonts.dart';
Widget getChart() {
  final data = [3, 8, 5, 4, 3, 7];
  final total = data.reduce((value, element) => value + element);
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
          child: SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  //happy
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${data[0] < 10 ? '0${data[0]}' : data[0]}',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black,
                      ),
                    ),
                    addVertical(5),
                    Container(
                      height: (data[0] / total) * 250,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffd2ae58),
                      ),
                    ),
                    addVertical(10),
                    Image.asset(
                      "assets/gif/smile.gif",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                addHorizontal(12.1),
                Column(
                  //sad
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${data[1] < 10 ? '0${data[1]}' : data[1]}',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black,
                      ),
                    ),
                    addVertical(5),
                    Container(
                      height: (data[1] / total) * 250,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xff6062ad),
                      ),
                    ),
                    addVertical(10),
                    Image.asset(
                      "assets/gif/sad.gif",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                addHorizontal(12.1),
                Column(
                  //stressed
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${data[2] < 10 ? '0${data[2]}' : data[2]}',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black,
                      ),
                    ),
                    addVertical(5),
                    Container(
                      height: (data[2] / total) * 250,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffca8677), //stressed
                      ),
                    ),
                    addVertical(10),
                    Image.asset(
                      "assets/gif/stressed.gif",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                addHorizontal(12.1),
                Column(
                  //fear
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${data[3] < 10 ? '0${data[3]}' : data[3]}',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black,
                      ),
                    ),
                    addVertical(5),
                    Container(
                      height: (data[3] / total) * 250,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xff5b9c97),
                      ),
                    ),
                    addVertical(10),
                    Image.asset(
                      "assets/gif/fear.gif",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                addHorizontal(12.1),
                Column(
                  //angry
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${data[4] < 10 ? '0${data[4]}' : data[4]}',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black,
                      ),
                    ),
                    addVertical(5),
                    Container(
                      height: (data[4] / total) * 250,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffa76788),
                      ),
                    ),
                    addVertical(10),
                    Image.asset(
                      "assets/gif/angry.gif",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                addHorizontal(12.1),
                Column(
                  //depressed
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${data[5] < 10 ? '0${data[5]}' : data[5]}',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: MyColors.black,
                      ),
                    ),
                    addVertical(5),
                    Container(
                      height: (data[5] / total) * 250,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffcf987b),
                      ),
                    ),
                    addVertical(10),
                    Image.asset(
                      "assets/gif/depressed.gif",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                addHorizontal(12.1),
              ],
            ),
          )),
    ),
  );
}
