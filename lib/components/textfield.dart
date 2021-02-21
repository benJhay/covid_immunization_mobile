import 'package:covid_immunization_mobile/components/properties.dart';
import 'package:covid_immunization_mobile/specs/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textFormField({
  @required String hintText,
  String labelText,
  String validateMsg,
  IconData icon,
  IconData prefixIcon,
  Color iconColor,
  Color prefixIconColor,
  Color cursorColor,
  Color textColor = BLACK,
  Color labelColor = BLACK,
  Color backgroundColor = WHITE,
  @required TextEditingController controller,
  bool validate = true,
  bool suggestion = false,
  TextInputType inputType = TextInputType.text,
  int maxLine = 1,
  int minLine = 1,
  bool validateEmail = false,
  double width,
  enable = true,
  bool removeBorder = false,
  void Function() onIconTap,
  TextInputAction inputAction,
  void Function() onEditingComplete,
  void Function(String text) onTextChange,
  @required FocusNode focusNode,
}) {
  return Container(
    width: width,
    child: TextFormField(
      enabled: enable,
      enableSuggestions: suggestion,
      keyboardType: inputType,
      controller: controller,
      minLines: minLine,
      maxLines: maxLine,
      focusNode: focusNode,
      autofocus: false,
      textInputAction: inputAction,
      cursorColor: cursorColor,
      style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
      onEditingComplete: () {
        print(controller.text);
        focusNode.unfocus();
        onEditingComplete();
      },
      onChanged: (text) => onTextChange(text),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: ASHDEEP),
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor),
        filled: true,
        fillColor: backgroundColor,
        suffixIcon: icon == null
            ? null
            : GestureDetector(
                onTap: onIconTap,
                child: Icon(icon, color: iconColor),
              ),
        prefixIcon: prefixIcon == null
            ? null
            : Icon(prefixIcon, color: prefixIconColor),
        enabledBorder: removeBorder
            ? InputBorder.none
            : OutlineInputBorder(
                borderSide: BorderSide(color: BLACK, width: 1),
              ),
        focusedBorder: removeBorder
            ? InputBorder.none
            : OutlineInputBorder(
                borderSide: BorderSide(color: BLACK, width: 1),
              ),
        border: removeBorder
            ? InputBorder.none
            : OutlineInputBorder(
                borderSide: BorderSide(color: BLACK, width: 1),
              ),
        errorStyle: TextStyle(
          color: Colors.red,
        ),
      ),
      validator: (value) {
        RegExp regex = new RegExp(PATTERN);
        if (value.isEmpty && validate) {
          return validateMsg;
        } else if (validateEmail && !regex.hasMatch(value)) {
          return "Please enter a valid email address";
        }
        return null;
      },
    ),
  );
}