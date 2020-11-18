import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sandisam/data/database.dart';
import 'list_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Container(
                margin: EdgeInsets.only(top: 13.0, bottom: 15.0),
                child: SvgPicture.asset(
                  'assets/svg/home_appbar_logo.svg',
                  height: 21.0,
                ),
              ),
              actions: [
                RawMaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(top: 16.0, right: 0.0, bottom: 15.0),
                    child: SvgPicture.asset(
                      'assets/svg/home_appbar_lock.svg',
                      height: 24.0,
                      width: 19.2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  // ========================== LIST START ================================
                  // SizedBox(height: 20.0),
                  ListBox(
                    platform: credentials[0].platform,
                    username: credentials[0].username,
                    email: credentials[0].email,
                    password: credentials[0].password,
                  ),

                  for (var i = 1; i <= credentials.length - 1; i++)
                    // for( var i = 1 ; i <= credentials.length; i++ ) { 
                      // ListDivider(),
                      ListBox(
                        platform: credentials[i].platform,
                        username: credentials[i].username,
                        email: credentials[i].email,
                        password: credentials[i].password,
                      ), 
                    // },
                  
                  
                  // ========================== LIST END ================================
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
