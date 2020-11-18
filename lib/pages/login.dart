import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sandisam/data/database.dart';
import 'package:sandisam/pages/error.dart';
import 'package:sandisam/pages/home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 40.0),
                          child: SvgPicture.asset(
                            'assets/svg/login_image.svg',
                            width: 230.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Welcome, my lord!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF14213D),
                              fontSize: 33,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 35.0),
                          child: Text(
                            'Welcome to your treasure palace, my lord. \nTo enter, please input the key, my lord!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: TextField(
                            controller: myController,
                            obscureText: true,
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: new InputDecoration(
                              prefixIcon: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 12.0),
                                child: SvgPicture.asset(
                                  'assets/svg/login_shield_icon.svg',
                                  height: 22.0,
                                  width: 18.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  color: Color(0xFFFCA311),
                                  width: 1.5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  color: Color(0xFFFCA311),
                                  width: 1.5,
                                ),
                              ),
                              hintText: 'Please input the key here...',
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            height: 48.0,
                            minWidth: 155.0,
                            color: Color(0xFF14213D),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Color(0xFF14213D),
                              ),
                            ),
                            onPressed: () {
                              if (myController.text == masterPassword) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                                myController.clear();
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ErrorPage()),
                                );
                                myController.clear();
                              }
                            },
                            child: Text(
                              "LOGIN",
                              style: GoogleFonts.getFont(
                                'Lato',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 156.0),
                    // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Text(
                      'Built and owned by Hisam A Fahri. \n©2020 Hisam A Fahri.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFACACAC),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
