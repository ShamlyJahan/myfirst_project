import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirst_project/splash.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  ));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Login Page"),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw9DfvVvzaYQA11KuKEoEAqVy9Qd5HtvVCmg&usqp=CAU"),
                  fit: BoxFit.fill
                  //gradient: LinearGradient(
                  //begin: Alignment.topCenter,
                  //end: Alignment.centerLeft,
                  //colors: [
                  //Colors.red.shade900,
                  //Colors.deepOrange,
                  //Colors.orange
                  // ]
                  )),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image(
                  image: AssetImage("images/flogo.png"),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: " Usename or Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: TextField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_clock_rounded),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintText: " Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black,minimumSize: Size(300, 50),),
                    onPressed: () {},
                    child: Text("LOGIN")),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("create an account",
                      style: GoogleFonts.akayaKanadaka(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          textStyle: Theme.of(context).textTheme.titleMedium)),
                )
              ],
            ),
          ),
        ));
  }
}
