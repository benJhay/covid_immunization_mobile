import 'package:covid_immunization_mobile/components/appBar.dart';
import 'package:covid_immunization_mobile/components/emptybox.dart';
import 'package:covid_immunization_mobile/screens/first_vaccine/widget/widget.dart';
import 'package:covid_immunization_mobile/specs/colors.dart';
import 'package:covid_immunization_mobile/specs/styles.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatefulWidget {
  @override
  _EmptyPageState createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context: context, title: "Final Page", elevation: 0.0),
        body: Center(
            child: emptyBox(
          context,
        )));
  }
}
