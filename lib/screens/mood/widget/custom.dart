import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:igniters/constants/route_constants.dart';
import 'package:igniters/utils/services/rest_api_service.dart';

Widget MoodBox(text, color, textcolor, image, context) {
  return GestureDetector(
    onTap: () async {
      Response response = await RestAPIService().postMood(text);
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, scaffoldRoute);
      }
    },
    child: Container(
      width: 110,
      height: 110,
      margin: const EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: const BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 40,
            width: 40,
          ),
          addVertical(5),
          Text(text,
              style: GoogleFonts.roboto(
                color: Color(textcolor),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    ),
  );
}

Widget addHorizontal(double width) {
  return SizedBox(
    width: width,
  );
}

Widget addVertical(double height) {
  return SizedBox(
    height: height,
  );
}
