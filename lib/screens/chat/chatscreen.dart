import "dart:convert";
import "dart:io";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:igniters/constants/MyColors.dart";
import "package:igniters/screens/mood/widget/custom.dart";
import "package:ionicons/ionicons.dart";
import "package:shared_preferences/shared_preferences.dart";
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var d = "1";
  dynamic chats = [];
  var roomName = "";
  var members = "0";
  late IO.Socket socket;
  TextEditingController messageController = TextEditingController();
  void connect() async {
    final prefs = await SharedPreferences.getInstance();
    print(jsonDecode(prefs.getString('data').toString()));
    socket = IO.io('http://100.101.175.52:3000', <String, dynamic>{
      'transports': ['websocket'],
      'upgrade': false,
      "query": {
        'token': jsonDecode(prefs.getString('data').toString())['accesstoken'],
      }
    });
    var isme = jsonDecode(prefs.getString('data').toString())['userid'];
    print(isme);
    socket.connect();
    socket.on('connect', (data) {
      print("connected!");
    });
    socket.on('get-history', (data) {
      chats = [];
      for (var i = 0; i < data['chat'].length; i++) {
        setState(() {
          chats.add(
            Row(
              mainAxisAlignment: (isme == data['chat'][i]['user_id'])
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVertical(5),
                    (isme != data['chat'][i]['user_id'])
                        ? Text(
                            "Anonymous from " + data['chat'][i]['location'],
                            style: GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 131, 131, 131),
                            ),
                          )
                        : addVertical(0),
                    Container(
                      width: 250,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: (isme == data['chat'][i]['user_id'])
                            ? MyColors.primary
                            : Color(0xFFC0C0C0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        data['chat'][i]['message'],
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
          roomName = data['room'].toString();
          members = data['members'].toString();
        });
      }
    });
    socket.on('receive-join', (data) {
      if (data['user_id'] != isme) {
        setState(() {
          members = data['members'].toString();
          chats.add(
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVertical(5),
                    Text(
                      "Anonymous from " + data['location'],
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 131, 131, 131),
                      ),
                    ),
                    Container(
                      width: 250,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: (isme == data['user_id'])
                            ? MyColors.primary
                            : Color(0xFFC0C0C0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        data['message'],
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
      }
    });
    socket.on('receive-message', (data) {
      setState(() {
        chats.add(
          Row(
            mainAxisAlignment: (isme == data['user_id'])
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVertical(5),
                  (isme != data['user_id'])
                      ? Text(
                          "Anonymous from " + data['location'],
                          style: GoogleFonts.roboto(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 131, 131, 131),
                          ),
                        )
                      : addVertical(0),
                  Container(
                    width: 250,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: (isme == data['user_id'])
                          ? MyColors.primary
                          : Color(0xFFC0C0C0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      data['message'],
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      });
    });
  }

  @override
  void initState() {
    super.initState();
    connect();
  }

  @override
  void dispose() {
    super.dispose();
    socket.disconnect();
    socket.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        shadowColor: Color.fromARGB(99, 211, 211, 211),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$roomName '),
            Text(
              "Members: ${members}",
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.height / 1.238,
              child: SingleChildScrollView(
                reverse: true,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [...chats],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 317,
                    child: TextFormField(
                      controller: messageController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Message cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                            borderSide: BorderSide(
                              color: MyColors.primary,
                            ),
                          ),
                          hintText: 'Enter message...',
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: MyColors.primary,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        if (messageController.text == "") return;
                        socket.emit('send-message', {
                          'message': messageController.text,
                        });
                      },
                      child: const Icon(
                        Ionicons.paper_plane_outline,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
