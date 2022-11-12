// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class TodoListWidget extends StatefulWidget {
//   const TodoListWidget({Key? key}) : super(key: key);

//   @override
//   _TodoListWidgetState createState() => _TodoListWidgetState();
// }

// class _TodoListWidgetState extends State<TodoListWidget> {
//   bool? checkboxListTileValue1;
//   bool? checkboxListTileValue2;
//   bool? checkboxListTileValue3;
//   bool? checkboxListTileValue4;
//   bool? checkboxListTileValue5;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Color(0xFFABC270),
//       body: GestureDetector(
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: SafeArea(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SelectionArea(
//                               child: Text(
//                             '23th Nov, 2023',
//                             textAlign: TextAlign.start,
//                             style: TextStyle(),
//                           )),
//                           SelectionArea(
//                               child: Text(
//                             'Your Daily Tasks',
//                             style: TextStyle(
//                               fontFamily: 'Poppins',
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         IconButton(
//                           // borderColor: Colors.transparent,
//                           // borderRadius: 30,
//                           // borderWidth: 1,
//                           // buttonSize: 40,
//                           icon: Icon(
//                             Icons.arrow_back_rounded,
//                             color: Colors.black,
//                             size: 30,
//                           ),
//                           onPressed: () {
//                             print('IconButton pressed ...');
//                           },
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 10,
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
//                         child: Text(
//                           'To do Activity',
//                           style: TextStyle(
//                             fontFamily: 'Outfit',
//                             color: Color(0xFF57636C),
//                             fontSize: 18,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(2, 12, 0, 0),
//                       child: Text(
//                         'Completed',
//                         style: TextStyle(
//                           fontFamily: 'Outfit',
//                           color: Color(0xFF57636C),
//                           fontSize: 18,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                 child: ListView(
//                   padding: EdgeInsets.zero,
//                   shrinkWrap: true,
//                   scrollDirection: Axis.vertical,
//                   children: [
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
//                       child: Container(
//                         width: 100,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(
//                             color: Color(0xFFE0E3E7),
//                             width: 2,
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Expanded(
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Color(0xFF57636C),
//                                 ),
//                                 child: CheckboxListTile(
//                                   value: checkboxListTileValue1 ??= false,
//                                   onChanged: (newValue) async {
//                                     setState(() =>
//                                         checkboxListTileValue1 = newValue!);
//                                   },
//                                   title: Text(
//                                     'Go to Office at 10AM',
//                                     style: TextStyle(
//                                       fontFamily: 'Outfit',
//                                       color: Color(0xFF101213),
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                   tileColor: Colors.white,
//                                   activeColor: Color(0xFF4B39EF),
//                                   checkColor: Colors.white,
//                                   dense: false,
//                                   controlAffinity:
//                                       ListTileControlAffinity.trailing,
//                                   contentPadding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 8, 0),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
//                       child: Container(
//                         width: 100,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(
//                             color: Color(0xFFE0E3E7),
//                             width: 2,
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Expanded(
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Color(0xFF57636C),
//                                 ),
//                                 child: CheckboxListTile(
//                                   value: checkboxListTileValue2 ??= false,
//                                   onChanged: (newValue) async {
//                                     setState(() =>
//                                         checkboxListTileValue2 = newValue!);
//                                   },
//                                   title: Text(
//                                     'Go to Office at 10AM',
//                                     style: TextStyle(
//                                       fontFamily: 'Outfit',
//                                       color: Color(0xFF101213),
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                   tileColor: Colors.white,
//                                   activeColor: Color(0xFF4B39EF),
//                                   checkColor: Colors.white,
//                                   dense: false,
//                                   controlAffinity:
//                                       ListTileControlAffinity.trailing,
//                                   contentPadding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 8, 0),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
//                       child: Container(
//                         width: 100,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(
//                             color: Color(0xFFE0E3E7),
//                             width: 2,
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Expanded(
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Color(0xFF57636C),
//                                 ),
//                                 child: CheckboxListTile(
//                                   value: checkboxListTileValue3 ??= false,
//                                   onChanged: (newValue) async {
//                                     setState(() =>
//                                         checkboxListTileValue3 = newValue!);
//                                   },
//                                   title: Text(
//                                     'Go to Office at 10AM',
//                                     style: TextStyle(
//                                       fontFamily: 'Outfit',
//                                       color: Color(0xFF101213),
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                   tileColor: Colors.white,
//                                   activeColor: Color(0xFF4B39EF),
//                                   checkColor: Colors.white,
//                                   dense: false,
//                                   controlAffinity:
//                                       ListTileControlAffinity.trailing,
//                                   contentPadding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 8, 0),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
//                       child: Container(
//                         width: 100,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(
//                             color: Color(0xFFE0E3E7),
//                             width: 2,
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Expanded(
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Color(0xFF57636C),
//                                 ),
//                                 child: CheckboxListTile(
//                                   value: checkboxListTileValue4 ??= false,
//                                   onChanged: (newValue) async {
//                                     setState(() =>
//                                         checkboxListTileValue4 = newValue!);
//                                   },
//                                   title: Text(
//                                     'Go to Office at 10AM',
//                                     style: TextStyle(
//                                       fontFamily: 'Outfit',
//                                       color: Color(0xFF101213),
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                   tileColor: Colors.white,
//                                   activeColor: Color(0xFF4B39EF),
//                                   checkColor: Colors.white,
//                                   dense: false,
//                                   controlAffinity:
//                                       ListTileControlAffinity.trailing,
//                                   contentPadding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 8, 0),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
//                       child: Container(
//                         width: 100,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(
//                             color: Color(0xFFE0E3E7),
//                             width: 2,
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Expanded(
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Color(0xFF57636C),
//                                 ),
//                                 child: CheckboxListTile(
//                                   value: checkboxListTileValue5 ??= false,
//                                   onChanged: (newValue) async {
//                                     setState(() =>
//                                         checkboxListTileValue5 = newValue!);
//                                   },
//                                   title: Text(
//                                     'Go to Office at 10AM',
//                                     style: TextStyle(
//                                       fontFamily: 'Outfit',
//                                       color: Color(0xFF101213),
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                   tileColor: Colors.white,
//                                   activeColor: Color(0xFF4B39EF),
//                                   checkColor: Colors.white,
//                                   dense: false,
//                                   controlAffinity:
//                                       ListTileControlAffinity.trailing,
//                                   contentPadding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 8, 0),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
//                 child: LinearPercentIndicator(
//                   percent: 0,
//                   width: MediaQuery.of(context).size.width,
//                   lineHeight: 12,
//                   animation: true,
//                   progressColor: Color(0xFF39D2C0),
//                   backgroundColor: Color(0xFFE0E3E7),
//                   barRadius: Radius.circular(0),
//                   padding: EdgeInsets.zero,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/constants/route_constants.dart';
import 'package:igniters/constants/url_conatants.dart';
import 'package:igniters/utils/services/rest_api_service.dart';
import 'package:igniters/widgets/custom_button.dart';
import 'package:igniters/widgets/popins_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    Response response;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.6,
                            child: PoppinsText(
                                text: "23th Nov,2023",
                                fontsize: 16,
                                fontweight: FontWeight.w300),
                          ),
                        ),
                        PoppinsText(
                            text: "Your Daily Task",
                            fontsize: 20,
                            fontweight: FontWeight.w700),
                      ],
                    ),
                    SizedBox(
                      width: 150,
                      child: CustomButton(
                          buttonText: "Create Daily Task",
                          onPressed: (() {
                            Navigator.pushNamed(context, createTodoApp);
                          }),
                          buttonColor: MyColors.primary,
                          textstyle: TextStyle(fontSize: 16)),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: FutureBuilder<Response>(
                future: todo(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: jsonDecode(snapshot.data!.body).length,
                        itemBuilder: ((context, index) => TodoContainer(
                              tick: jsonDecode(snapshot.data!.body)[index]
                                  ["completed"],
                              indiTodoId: jsonDecode(snapshot.data!.body)[index]
                                  ["todo_item_id"],
                              text: jsonDecode(snapshot.data!.body)[index]
                                  ["todo"],
                            )));
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          )
        ],
      ),
    );
  }
}

Future<Response> todo() async {
  var res = await RestAPIService().register(APIUrl.getTodo, {});
  var response = await RestAPIService().register(APIUrl.fetchIndividualTodo,
      {"todo_id": jsonDecode(res.body)[0]["todo_id"]});
  print(response.body);
  return response;
}

class TodoContainer extends StatefulWidget {
  const TodoContainer(
      {super.key,
      required this.text,
      required this.indiTodoId,
      required this.tick});
  final String text;
  final String indiTodoId;
  final String tick;
  @override
  State<TodoContainer> createState() => _TodoContainerState();
}

class _TodoContainerState extends State<TodoContainer> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: ListTile(
            title: Text(
              widget.text,
              style: widget.tick == "true" || check
                  ? TextStyle(decoration: TextDecoration.lineThrough)
                  : TextStyle(),
            ),
            trailing: Checkbox(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return MyColors.primary;
                  }
                  return MyColors.primary;
                }),
                onChanged: ((value) {
                  setState(() {
                    check = true;
                  });
                }),
                value: widget.tick == "true" || check),
            onTap: () async {
              await RestAPIService().post(
                  "/user/completetodo", {"todo_item_id": widget.indiTodoId});
              setState(() {
                check = true;
              });
            }));
  }
}
