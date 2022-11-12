import 'package:flutter/material.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/constants/route_constants.dart';
import 'package:igniters/constants/url_conatants.dart';
import 'package:igniters/screens/todo/todo.dart';
import 'package:igniters/utils/services/rest_api_service.dart';
import 'package:igniters/widgets/custom_button.dart';
import 'package:igniters/widgets/popins_text.dart';

class AddTodo extends StatefulWidget {
  @override
  AddTodoState createState() => AddTodoState();
}

class AddTodoState extends State<AddTodo> {
  List<TextEditingController> _controllers = [];
  List<TextField> _fields = [];

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_left_sharp)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: PoppinsText(
                          text: "Add Daily Task",
                          fontsize: 30,
                          color: MyColors.primary,
                          fontweight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(child: _listView()),
            _addTile(),
            SizedBox(
              height: 30,
            ),
            _okButton(),
          ],
        ),
      )),
    );
  }

  Widget _addTile() {
    return ListTile(
      title: Icon(Icons.add),
      onTap: () {
        final controller = TextEditingController();
        final field = TextField(
          controller: controller,
          decoration: InputDecoration(
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
            labelText: "Task${_controllers.length + 1}",
          ),
        );

        setState(() {
          _controllers.add(controller);
          _fields.add(field);
        });
      },
    );
  }

  Widget _listView() {
    return ListView.builder(
      itemCount: _fields.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          child: _fields[index],
        );
      },
    );
  }

  Widget _okButton() {
    return CustomButton(
      buttonColor: MyColors.primary,
      buttonText: "Save",
      textstyle: TextStyle(),
      onPressed: () async {
        String text = _controllers
            .where((element) => element.text != "")
            .fold("", (acc, element) => acc += "${element.text}0");
        for (int i = 0; i < text.split("0").length - 1; i++) {
          print(text);
          await RestAPIService().register(APIUrl.addTodoItem, {
            "todo_id": "4083ef2a0a736aa51950b3db",
            "todo": text.split("0")[i]
          });
        }
        final alert = AlertDialog(
          title: Text("Success"),
          content: Text("Daily Task Added Successfully"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, scaffoldRoute);
              },
              child: Text("ok"),
            ),
          ],
        );

        await showDialog(
          context: context,
          builder: (BuildContext context) => alert,
        );
        setState(() {});
      },
    );
  }
}
