import 'package:flutter/material.dart';

class ListDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Divider(
        color: Color(0xFFE5E5E5),
        thickness: 1,
        indent: 35,
        endIndent: 35,
      ),
    );
  }
}
