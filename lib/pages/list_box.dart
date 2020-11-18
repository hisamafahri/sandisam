import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sandisam/pages/list_divider.dart';

import 'modal_sheet.dart';

class ListBox extends StatelessWidget {
  final String platform;
  final String username;
  final String email;
  final String password;

  ListBox({this.platform, this.username, this.email, this.password});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListDivider(),
        RawMaterialButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              context: context,
              builder: (BuildContext context) {
                return Scaffold(
                  body: ModalSheet(
                    modalPlatformName: platform,
                    modalUsername: username,
                    modalEmail: email,
                    modalPassword: password,
                  ),
                );
              },
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            width: MediaQuery.of(context).size.width,
            // color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                      child: SvgPicture.asset(
                        'assets/svg/home_content_icon.svg',
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      height: 70.0,
                      width: MediaQuery.of(context).size.width - 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              platform.toUpperCase(),
                              textAlign: TextAlign.left,
                              style: GoogleFonts.getFont(
                                'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 3,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              username.toLowerCase(),
                              textAlign: TextAlign.left,
                              style: GoogleFonts.getFont(
                                'Lato',
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                  child: SvgPicture.asset(
                    'assets/svg/home_content_arrow.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
