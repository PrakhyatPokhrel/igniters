import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:igniters/constants/MyColors.dart';

class Expert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, String> map = {
      'url':
          "https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg?w=2000",
      "name": "Sarika Dahal",
      "field": "phycologist",
      "hospital": "Bir Hospital"
    };
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text("Experts"),
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 550,
                width: 395,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text("Specialist Doctors",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GetUserName(
                              data: map,
                            ),
                            GetUserName(
                              data: map,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GetUserName(
                              data: map,
                            ),
                            GetUserName(
                              data: map,
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// class DrInfoContainer extends StatelessWidget {
//   const DrInfoContainer({Key? key, required this.name, required this.field, required thisospital, required this.schedule}) : super(key: key);
//   final String name;
//   final String field;
//   final String hospital;
//   final String schedule;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 150,
//       decoration: BoxDecoration(
//           border: Border.all(color: MyColors.black, style: BorderStyle.solid)),
//       child: Column(children: [
//         Container(
//           height: 100,
//           width: 150,
//           child: Image.network(
//             "https://thumbs.dreamstime.com/b/photo-attractive-doctor-practitioner-lady-meet-patients-consultation-not-smiling-reliable-person-arms-crossed-wear-white-lab-176968213.jpg",
//             fit: BoxFit.fill,
//           ),
//         ),
//         Text(name),
//         Text(field),
//         Text(hospital),
//         Text(schedule),
//       ]),
//     );
//   }
// }
class GetUserName extends StatelessWidget {
  final Map<String, String> data;
  const GetUserName({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.black, style: BorderStyle.solid)),
      child: Column(children: [
        Container(
          height: 100,
          width: 150,
          child: Image.network(
            data['url'].toString(),
            fit: BoxFit.fill,
          ),
        ),
        Text(" ${data['name']} "),
        Text(" ${data['field']} "),
        Text(" ${data['hospital']} "),
      ]),
    );
  }
}

class SymptomsText extends StatelessWidget {
  const SymptomsText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "\u2022 $text",
            style: TextStyle(fontSize: 17),
          )),
    );
  }
}
