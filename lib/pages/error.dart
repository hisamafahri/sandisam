import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatefulWidget {
  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         backgroundColor: Colors.white,
         body: SafeArea(
           child: Center(
             child: Container(
               padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
              //  width: ,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     margin: EdgeInsets.only(bottom: 25.0),
                     child: SvgPicture.asset('assets/svg/error_image.svg'),
                   ),
                   Container(
                        margin: EdgeInsets.only(bottom: 55.0),
                        child: Text(
                          'Ooops! My lord,\nis that you?',
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
                        child: FlatButton(
                          height: 48.0,
                          minWidth: 155.0,
                          color: Colors.white,
                          textColor: Color(0xFF14213D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                              color: Color(0xFF14213D),
                              width: 1.5,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "TRY AGAIN",
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
           ),
         ),
       ),
    );
  }
}