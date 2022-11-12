import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/home/widgets/chart.dart';
import 'package:igniters/screens/home/widgets/currentmood.dart';
import 'package:igniters/screens/home/widgets/journal.dart';
import 'package:igniters/screens/home/widgets/nav.dart';
import 'package:igniters/screens/mood/widget/custom.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 80;

    return SingleChildScrollView(
      child: Column(
        children: [
          addVertical(20),
          getNav(),
          addVertical(8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              thickness: 1,
              color: Color.fromARGB(19, 97, 97, 97),
            ),
          ),
          addVertical(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Happy Streak",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffd2ae58),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/fire.png",
                            width: 25,
                            height: 25,
                          ),
                          Text(
                            "7",
                            style: GoogleFonts.roboto(
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                              color: Color(0x9BEC4343),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          const Icon(
                            Ionicons.disc,
                            color: Color(0x9BEC4343),
                            size: 16,
                          ),
                          addHorizontal(3),
                          Text(
                            "80",
                            style: GoogleFonts.roboto(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      addVertical(5),
                      Text(
                        "Silver",
                        style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      addVertical(10),
                      Stack(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.5),
                              color: Color.fromARGB(148, 255, 255, 255),
                            ),
                            child: Container(
                              width: 120,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            bottom: 0,
                            right: 20,
                            child: Container(
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.5),
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: null,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          addVertical(8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              thickness: 1,
              color: Color.fromARGB(19, 97, 97, 97),
            ),
          ),
          addVertical(8),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Current Mood",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          addVertical(10),
          getCurrentMood(),
          addVertical(40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: FractionallySizedBox(
              widthFactor: 1,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get Medicine from Chabahil.",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF333333),
                      ),
                    ),
                    addVertical(10),
                    Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: 15,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: const Color.fromARGB(141, 171, 194, 112),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          bottom: 0,
                          right: width - (width * (78 / 100)),
                          child: Container(
                            height: 15,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.5),
                              color: Color(0xffabc270),
                            ),
                            child: null,
                          ),
                        ),
                      ],
                    ),
                    addVertical(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "08/10",
                          style: GoogleFonts.roboto(
                            color: Color.fromARGB(133, 66, 66, 66),
                          ),
                        ),
                      ],
                    ),
                    addVertical(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "See More",
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
          ),
          addVertical(10),
          getJournal(),
          addVertical(10),
          getChart(),
          addVertical(10),
        ],
      ),
    );
  }
}
