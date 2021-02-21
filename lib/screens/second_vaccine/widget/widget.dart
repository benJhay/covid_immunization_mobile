import 'package:covid_immunization_mobile/components/textfield.dart';
import 'package:covid_immunization_mobile/specs/strings.dart';
import 'package:covid_immunization_mobile/specs/styles.dart';
import 'package:flutter/material.dart';

Widget secondVaccineDetails({
TextEditingController controller,
FocusNode focusNode,
String title,
String hintText,
bool enabled,
Function function
}){
    return Container(
      child:   Column(
        children: [
         
          Text("$title", style: h4Black),
           SizedBox(height: 10),
              GestureDetector(
                onTap: function,
                child: textFormField(
                  hintText: "$hintText",
                  controller: controller,
                  focusNode: focusNode,
                  validateMsg: REQUIREDFIELDMSG,
                  enable: enabled
                ),
              ),
        ],
      ),
             
    );
}