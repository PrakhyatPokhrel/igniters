import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/mood/widget/custom.dart';
import 'package:igniters/utils/services/rest_api_service.dart';
import 'package:igniters/widgets/custom_button.dart';
import 'package:igniters/widgets/popins_text.dart';

class Jornal extends StatelessWidget {
  const Jornal({super.key});

  @override
  Widget build(BuildContext context) {
    var initailvalue = null;
    var controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              addVertical(10),
              const Align(
                alignment: Alignment.centerLeft,
                child: PoppinsText(
                  text: "Journal",
                  fontsize: 30,
                  fontweight: FontWeight.w600,
                ),
              ),
              addVertical(50),
              Align(
                alignment: Alignment.centerLeft,
                child: PoppinsText(
                  text: "Add Your Journal here",
                  fontsize: 24,
                  fontweight: FontWeight.w600,
                  color: MyColors.primary,
                ),
              ),
              JornalFormfield(
                // initialvalue: initailvalue,
                controller: controller,
                maxlines: 20,
              ),
              addVertical(30),
              CustomButton(
                  buttonText: "Submit",
                  onPressed: () {
                    RestAPIService().postML(controller.text);
                  },
                  buttonColor: MyColors.primary,
                  textstyle: TextStyle())
            ],
          ),
        ),
      ),
    );
  }
}

class JornalFormfield extends StatelessWidget {
  const JornalFormfield({
    Key? key,
    required this.controller,
    this.labelText,
    this.onPressed,
    this.validator,
    this.hintText,
    this.contentPadding = 16,
    this.maxlines,
    this.textformatter,
    this.obscure = false,
    // required this.initialvalue
  }) : super(key: key);
  final int? maxlines;
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final GestureTapCallback? onPressed;
  final double? contentPadding;
  final List<TextInputFormatter>? textformatter;
  final bool obscure;
  // final String initialvalue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        // child: SizedBox(
        //   height: 57.h,
        child: TextFormField(
            // initialValue: initialvalue,
            controller: controller,
            maxLines: maxlines,
            decoration: InputDecoration(
              // filled: true,
              // fillColor: MyColors.formFieldBackgroundColor,
              contentPadding: EdgeInsets.symmetric(
                  vertical: 10, horizontal: contentPadding!),
              labelText: labelText,
              hintText: hintText,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyColors.primary)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyColors.primary)),
              // floatingLabelStyle: TextStyle(color: MyColors.primary),
            ),
            style: const TextStyle(color: Colors.black, fontSize: 16),
            cursorColor: Colors.black,
            inputFormatters: textformatter,
            validator: validator),
        // ),
      ),
    );
  }
}
