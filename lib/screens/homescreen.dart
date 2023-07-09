import 'package:flutter/material.dart';
import 'package:tvh/screens/pastwriting.dart';
import 'package:tvh/screens/reflections.dart';
import 'package:tvh/screens/writing.dart';
import 'package:tvh/widgets/reusable_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tvh/userdata.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: null,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            textAlign: TextAlign.center,
            "Home",
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
            child: Column(
              children: [
                homeImage("lib/assets/homeimage.png"),
                const SizedBox(height: 15),
                Text(
                  "Good " + greeting() + ", " + getName.toString(),
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 30)),
                ),
                const SizedBox(height: 15),
                homeButton(
                  "Start Writing",
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WritingPage())),
                ),
                const SizedBox(
                  height: 15,
                ),
                homeButton(
                  "View Writing",
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PastWritingPage())),
                ),
                const SizedBox(
                  height: 15,
                ),
                homeButton(
                  "View Reflections",
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReflectionsPage()),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
