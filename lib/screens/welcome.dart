import 'package:flutter/material.dart';
import 'package:project_four/screens/login.dart';
import 'package:project_four/screens/sigup.screen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -80,
            top: -80,
            child: Image.asset("assets/main_top.png"),
            ),
            Container(
              child: Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to EdDU",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset("assets/chat.png"
                    ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 171, 95, 165),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 110),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // fixedSize: Size(260, 55),
                      // side: BorderSide(
                      //   color: Colors.transparent,
                      //   width: 2
                      // ),
                    ),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> LoginScreen()));
                    }, 
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255,239, 255),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder:(context) => SignUpScreen()));
                    }, 
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color.fromARGB(255, 158, 144, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ),
                  ],
                )
              ),

            )
        ],
      ),
    ),
    );
  }
}