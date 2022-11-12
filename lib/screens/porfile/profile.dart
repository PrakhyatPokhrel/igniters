import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/constants/route_constants.dart';
import 'package:igniters/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future future() async {
      var prefs = await SharedPreferences.getInstance();
      var data = prefs.getString("data") as String;
      return jsonDecode(data);
    }

    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0B244B),
        body: SafeArea(child: SingleChildScrollView(
          child: FutureBuilder(builder: (context, snapshot) {
            if (true) {
              return Column(mainAxisSize: MainAxisSize.max, children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 100, 0),
                        child: Icon(
                          Icons.west,
                          color: Color(0xFFB8B5B5),
                          size: 28,
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFFB8B5B5),
                          fontSize: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                        child: Icon(
                          Icons.settings_sharp,
                          color: Color(0xFFB8B5B5),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    width: 90,
                    height: 90,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://image.freepik.com/free-vector/people-profile-icon_24877-40756.jpg',
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(),
                                Divider(
                                  height: 20,
                                  thickness: 1,
                                  endIndent: 55,
                                  color: Color(0xFF919191),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Text(
                                    'Username',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Username',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF393939),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 1,
                                  endIndent: 55,
                                  color: Color(0xFF919191),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 1,
                                  endIndent: 55,
                                  color: Color(0xFF919191),
                                ),
                                Text(
                                  'Phone',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '987654321',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF393939),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 1,
                                  endIndent: 55,
                                  color: Color(0xFF919191),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 60, 0),
                                  child: CustomButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(
                                          context, loginRoute);
                                    },
                                    buttonText: 'Sign Out',
                                    textstyle: TextStyle(),
                                    buttonColor: MyColors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )))
              ]);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
        )));
  }
}
