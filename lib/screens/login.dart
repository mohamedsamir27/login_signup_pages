import 'package:flutter/material.dart';
import 'package:project_four/screens/sigup.screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -75,
              top: -80,
              child: Image.asset("assets/main_top.png"),
              ),
              Positioned(
                right: -85,
                bottom: -90,
                child: Image.asset("assets/login_bottom.png"),
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
                    "Login".toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset("assets/login (1).png"),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    child: Container( 
                    margin: EdgeInsets.only(left: 30,right: 30),
                    child: Column(
                      children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 237, 223, 238),
                      filled: true,
                      prefixIcon: Icon(Icons.person,
                      color: Color.fromARGB(255, 177, 110, 172),
                      // size: 10,
                      ),
                      hintText: "email",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 54, 32, 53)
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ) ,
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 237, 223, 238),
                      filled: true,
                      prefixIcon: Icon(Icons.lock,
                      color: Color.fromARGB(255, 177, 110, 172),
                      // size: 10,
                      ),
                      hintText: "password",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 54, 32, 53)
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),
                  ),
                      ]
                  ),
                  ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 171, 95, 165),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 115),
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
                  Container(
                    margin: EdgeInsets.only(left: 70, right: 25),
                    child: Row(
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 94, 63, 92),
                            fontSize: 14,
                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> SignUpScreen())
                          );
                        }, 
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color.fromARGB(255, 78, 23, 76),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        ),
                      ],
                    ),
                  )
                    ]
                  ),
              ),
              ),
          ],
        )
      )
      ,
    );
  }
}