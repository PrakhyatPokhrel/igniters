import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/constants/route_constants.dart';
import 'package:igniters/constants/url_conatants.dart';
import 'package:igniters/screens/mood/mood_screen.dart';
import 'package:igniters/screens/register/register_screen.dart';
import 'package:igniters/utils/services/rest_api_service.dart';
import 'package:igniters/widgets/custom_button.dart';
import 'package:igniters/widgets/custom_formfield.dart';
import 'package:igniters/widgets/lato_text.dart';
import 'package:igniters/widgets/popins_text.dart';
import 'package:igniters/widgets/rich_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatelessWidget {
  const LoginForm(
      {Key? key,
      required this.emailcontroller,
      required this.passwordcontroller})
      : super(key: key);

  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();

    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PoppinsText(
              text: "Mobile Number",
              fontweight: FontWeight.w500,
              fontsize: 20,
              color: MyColors.black),
          CustomFormfield(
            validator: (value) {
              RegExp exp = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
              if (value == null || value.isEmpty) {
                return "Please enter email";
              } else if (int.tryParse(emailcontroller.text) != null &&
                  (int.tryParse(emailcontroller.text).toString().length ==
                      10)) {
              } else if (!exp.hasMatch(value)) {
                print((int.tryParse(emailcontroller.text)).toString());
                return "Please enter valid email";
              }
              return null;
            },
            controller: emailcontroller,
            hintText: "Enter Your Number",
          ),
          const SizedBox(
            height: 25,
          ),
          PoppinsText(
              text: "Password",
              fontweight: FontWeight.w500,
              fontsize: 20,
              color: MyColors.black),
          CustomFormfield(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter password";
              }
              return null;
            },
            obscure: true,
            controller: passwordcontroller,
            hintText: "Enter Your Password",
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
              buttonText: "LOGIN",
              onPressed: () async {
                if (formkey.currentState!.validate()) {
                  Response data = await RestAPIService().post(
                      APIUrl.signIn, <String, String>{
                    "phone": emailcontroller.text,
                    "password": passwordcontroller.text
                  });

                  final prefs = await SharedPreferences.getInstance();
                  if (data.statusCode == 200) {
                    // prefs.setString("acessToken", jsonDecode(data.body)['acesstoken']);
                    if (jsonDecode(data.body)["mood"] == "1") {
                      // ignore: use_build_context_synchronously
                      Navigator.popAndPushNamed(context, moodRoute);
                    } else {
                      Navigator.popAndPushNamed(context, scaffoldRoute);
                    }
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: const Text("Email or password is incorrect"),
                        title: const Text("Error"),
                        actions: [
                          TextButton(
                              onPressed: () => (Navigator.pop(context)),
                              child: const Text("Pos"))
                        ],
                      ),
                    );
                  }
                }
                // ignore: use_build_context_synchronously
              },
              buttonColor: MyColors.primary,
              textstyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, letterSpacing: 1.59)),
          const SizedBox(height: 23),
          CustomRichText(
            text: "Not Registered Yet? ",
            ontap: () => Navigator.popAndPushNamed(context, registerRoute),
            richtext: "Register Now",
            richtextColor: MyColors.primary,
          ),
        ],
      ),
    );
  }
}
