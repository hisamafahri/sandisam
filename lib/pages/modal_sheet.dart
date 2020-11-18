import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'list_divider.dart';

class ModalSheet extends StatefulWidget {
  final String modalPlatformName;
  final String modalUsername;
  final String modalEmail;
  final String modalPassword;

  ModalSheet(
      {this.modalPlatformName,
      this.modalUsername,
      this.modalEmail,
      this.modalPassword});

  @override
  _ModalSheetState createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  // Initially password is obscure
  bool _textIsHidden = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _textIsHidden = !_textIsHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.0,
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
        child: Column(
          children: [
            Container(
              child: Text(
                widget.modalPlatformName
                    .toUpperCase(), // ==================== PLATFORM NAME
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: ListDivider(),
            ),
            RawMaterialButton(
              onPressed: () {
                // ==================== COPY USERNAME
                Clipboard.setData(ClipboardData(text: widget.modalUsername));
                final snackBar = SnackBar(
                  content: Text('Username copied to clipboard'),
                  duration: Duration(seconds: 2),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      padding: EdgeInsets.all(22.0),
                      child: SvgPicture.asset('assets/svg/modal_user_icon.svg'),
                    ),
                    Container(
                      height: 70.0,
                      width: MediaQuery.of(context).size.width - 120,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.modalUsername, // ==================== USERNAME
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: widget.modalEmail));
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Email address copied to clipboard'),
                  duration: Duration(seconds: 2),
                ));
              }, // ==================== COPY EMAIL
              child: Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      padding: EdgeInsets.all(22.0),
                      child:
                          SvgPicture.asset('assets/svg/modal_email_icon.svg'),
                    ),
                    Container(
                      height: 70.0,
                      width: MediaQuery.of(context).size.width - 120,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.modalEmail
                              .toLowerCase(), // ==================== EMAIL ADDRESS
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70.0,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  RawMaterialButton(
                    onPressed: () {
                      // ==================== COPY PASSWORD
                      Clipboard.setData(
                          ClipboardData(text: widget.modalPassword));
                      final snackBar = SnackBar(
                        content: Text('Password copied to clipboard'),
                        duration: Duration(seconds: 2),
                      );
                      Scaffold.of(context).showSnackBar(snackBar);
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            padding: EdgeInsets.all(22.0),
                            child: SvgPicture.asset(
                                'assets/svg/modal_password_icon.svg'),
                          ),
                          Container(
                            height: 70.0,
                            width: MediaQuery.of(context).size.width - 208,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _textIsHidden == true
                                    ? '********'
                                    : widget
                                        .modalPassword, // ==================== PASSWORD VALUE
                                style: GoogleFonts.getFont(
                                  'Ubuntu Mono',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  // letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      _toggle();
                    }, // ==================== HIDE / VISIBLE VALUE
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      padding: EdgeInsets.all(22.0),
                      child: SvgPicture.asset(
                        _textIsHidden == true
                            ? 'assets/svg/modal_visible_icon.svg'
                            : 'assets/svg/modal_hidden_icon.svg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 17.0),
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
                  "CLOSE",
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
    );
  }
}
