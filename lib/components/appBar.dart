import 'dart:io';

import 'package:covid_immunization_mobile/specs/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar({
  @required String title,
  @required BuildContext context,
  String back,
  Widget leading,
  elevation = 0.1,
  Color color = PRIMARYCOLOR,
  Widget action,
}) {
  return Platform.isIOS
      ? CupertinoNavigationBar(
          middle: Text(
            "$title",
            style: TextStyle(color: color == WHITE ? BLACK : WHITE),
          ),
          previousPageTitle: back == null || back == "" ? "" : "$back",
          backgroundColor: color,
          trailing: action,
          actionsForegroundColor: color == WHITE ? BLACK : WHITE,
        )
      : AppBar(
          backgroundColor: color,
          elevation: elevation,
          title: Text(
            "$title",
            style: TextStyle(color: color == WHITE ? BLACK : WHITE),
          ),
          iconTheme: IconThemeData(color: color == WHITE ? BLACK : WHITE),
          centerTitle: true,
          actions: action == null ? null : [action],
        );
}

Widget tabAppBar({
  @required String title,
  @required BuildContext context,
  String back,
  Widget leading,
  List<String> tabs,
  Color color = PRIMARYCOLOR,
  Color labelColor = WHITE,
}) {
  return AppBar(
    backgroundColor: color,
    elevation: 0.3,
    title: Text(
      "$title",
      style: TextStyle(color: labelColor),
    ),
    centerTitle: true,
    iconTheme: IconThemeData(color: labelColor),
    bottom: TabBar(
      indicatorColor: BUTTONPRIMARYCOLOR,
      labelColor: labelColor,
      // These are the widgets to put in each tab in the tab bar.
      tabs: tabs.map((String name) => Tab(text: name)).toList(),
    ),
  );
}
