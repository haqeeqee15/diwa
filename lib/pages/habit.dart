import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/pages/timer.dart';

class Habit extends StatelessWidget {
  const Habit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color col = Colors.greenAccent;
    final TextEditingController _workController = TextEditingController();
    final TextEditingController _breakController = TextEditingController();
    final TextEditingController _sessionController = TextEditingController();

    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: false,
                backgroundColor: Colors.white,
                title: Text.rich(
                  TextSpan(
                    text: 'Mulai Sesi', // text for title
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.orange[500],
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                )),
            body: SingleChildScrollView(
                child: (Container(
              width: double.infinity,
              color: Colors.blueAccent,
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Durasi Fokus",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  SizedBox(
                      height:
                          10), // add a space between the text and the input field
                  TextField(
                    controller: _workController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                    ),
                    keyboardType:
                        TextInputType.number, // set the keyboard type to number
                    keyboardAppearance: Brightness.dark,
                    decoration: const InputDecoration(
                      // filled: true,
                      fillColor: Colors.black12,
                      labelText: '(dlm menit)',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.white10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.white10)),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Durasi Istirahat",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _breakController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                    ),
                    keyboardType:
                        TextInputType.number, // set the keyboard type to number
                    keyboardAppearance: Brightness.dark,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: '(dlm menit)',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.white10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.white10)),
                    ),
                  ),
                  const SizedBox(
                      height:
                          25), // add a space between the text and the input field
                  const Text(
                    "Sesi",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _sessionController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                    ),
                    keyboardType:
                        TextInputType.number, // set the keyboard type to number
                    keyboardAppearance: Brightness.dark,
                    decoration: const InputDecoration(
                      // filled: true,
                      fillColor: Colors.black12,
                      labelText: '(Jumlah sesi)',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.white10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.white10)),
                    ),
                  ),
                  SizedBox(
                      height:
                          80), // add a space between the text and the input field
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return FadeTransition(
                            opacity: animation,
                            child: MyTimer(
                                breakTime: _breakController.text,
                                workTime: _workController.text,
                                workSessions: _sessionController.text),
                          );
                        },
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange[500],
                        padding: EdgeInsets.zero,
                        minimumSize: Size(150, 50),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.black12, width: 2.0),
                        )),
                    child: const Text(
                      "Mulai",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                ],
              ),
            )))));
  }
}
