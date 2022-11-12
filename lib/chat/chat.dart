import 'package:flutter/material.dart';
import 'package:igniters/constants/url_conatants.dart';
import 'package:igniters/widgets/custom_formfield.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    socket() {
      IO.Socket socket = IO.io(APIUrl.baseUrl);
      print("hello");
      socket.onConnect((_) {
        print('connect');
        socket.emit('msg', 'test');
      });
      socket.on('send-message', (data) => print(data));
      socket.onDisconnect((_) => print('disconnect'));
      socket.on('reve-message', (_) => print(_));
    }

    ;
    var controller = TextEditingController();
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                socket();
              },
              child: Text("socket")),
          CustomFormfield(
            controller: controller,
          ),
        ],
      ),
    ));
  }
}




  // Dart client


