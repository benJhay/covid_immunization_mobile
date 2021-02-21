
import 'package:covid_immunization_mobile/specs/colors.dart';
import 'package:covid_immunization_mobile/specs/images.dart';
import 'package:flutter/material.dart';

Widget emptyBox(BuildContext context, {String msg = ""}) {
  return Container(
    height: MediaQuery.of(context).size.height - 100,
    width: MediaQuery.of(context).size.width,
    child: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset(EMPTYBIG),
            ),
            Center(
                child: Text(
              "Oops, Nothing Here !\n $msg",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: BLACK,
              ),
            )),
          ],
        ),
      ),
    ),
  );
}
