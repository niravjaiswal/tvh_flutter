import 'package:flutter/material.dart';
import 'package:tvh/widgets/reusable_widgets.dart';

class PastWritingPage extends StatefulWidget {
  PastWritingPage({Key? key}) : super(key: key);

  @override
  State<PastWritingPage> createState() => _PastWritingPageState();
}

class _PastWritingPageState extends State<PastWritingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          textAlign: TextAlign.center,
          "Entries",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(12, 40, 11, 1)),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 249, 235, 1),
              Color.fromRGBO(213, 231, 212, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Column(children: [entry("July 8, 2023 9:09:16", context)]),
        ),
      ),
    );
  }
}
