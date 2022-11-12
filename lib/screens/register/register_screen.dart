import 'package:flutter/material.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/constants/route_constants.dart';
import 'package:igniters/screens/register/widgets/register_form.dart';
import 'package:igniters/widgets/popins_text.dart';
import 'package:igniters/widgets/rich_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController numbercontroller = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                PoppinsText(
                  color: MyColors.black,
                  text: "Be A Member Of",
                  fontsize: 36,
                  fontweight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 5,
                ),
                PoppinsText(
                  text: "Deary Community",
                  fontsize: 22,
                  fontweight: FontWeight.w400,
                  color: MyColors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                // Center(child: Image.asset("assets/images/logo.png")),
                const SizedBox(
                  height: 20,
                ),
                RegisterForm(
                    emailController: emailController,
                    passwordController: passwordController,
                    nameController: nameController,
                    phoneController: numbercontroller,
                    confirmPasswordController: confirmPasswordController,
                    addressController: addressController),
                CustomRichText(
                    ontap: () => Navigator.popAndPushNamed(context, loginRoute),
                    text: "Already a member? ",
                    richtext: "Login Now",
                    richtextColor: Colors.green),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
