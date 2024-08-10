import 'package:flutter/material.dart';
import 'homepage.dart';

class LandingPage extends StatelessWidget {
  static const _textStyle = TextStyle(fontFamily: 'Ubuntu');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: 1,
                    child: Text(
                      'Fokus kuyy!',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.orange[900],
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                  SizedBox(height: 16),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: 1,
                    child: TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return FadeTransition(
                              opacity: animation,
                              child: HomePage(),
                            );
                          },
                        ),
                      ),
                      child: Text(
                        'Mulai',
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            alignment: Alignment.center,
            child: Text(
              'Edit by some people in Esgul.',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.orange[900],
                  fontFamily: 'Ubuntu'),
            ),
          ),
        ],
      ),
    );
  }
}
