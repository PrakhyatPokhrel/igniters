import 'package:flutter/material.dart';

class JournalHistory extends StatelessWidget {
  const JournalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: ((context, snapshot) {
      return ListView.builder(itemBuilder: ((context, index) => Container()));
    }));
  }
}

class JournalContainer extends StatelessWidget {
  const JournalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
