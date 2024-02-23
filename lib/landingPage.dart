import 'package:flutter/material.dart';
import 'package:slicing_app/Login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFFAE392),
      body: Center( 
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text('TalkDM', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold, fontFamily: 'Hurricane'),),
           SizedBox(height: 50,),
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(40.0, 10.0),
                    child: Image.asset(
                      'Object1.png',
                      height: 90,
                      width: 90,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-5.0, -30.0),
                    child: Image.asset(
                      'Object2.png',
                      height: 86,
                      width: 83,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100.0,
              ),
              const Text(
                'Let\'s talk with new friends',
                style: TextStyle(
                  fontFamily: 'Ibarra',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(73, 10, 73, 15),
                    backgroundColor: const Color(0xFF1A5D1A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const FittedBox(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color(0xFFF1C93B),
                        fontFamily: 'Ibarra',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
        ],
       ),
      ),
    );
  }
}