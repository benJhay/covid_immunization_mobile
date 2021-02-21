import 'package:covid_immunization_mobile/components/appBar.dart';
import 'package:covid_immunization_mobile/screens/personal_information/widget/finalPersonalInformation.dart';
import 'package:covid_immunization_mobile/screens/personal_information/widget/personalInfoWidget.dart';
import 'package:covid_immunization_mobile/specs/colors.dart';
import 'package:covid_immunization_mobile/specs/styles.dart';
import 'package:flutter/material.dart';

class PersonalInformationPage extends StatefulWidget {
  @override
  _PersonalInformationPageState createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  FocusNode firstNameFocusNode,
      middleNameFocusNode,
      lastNameFocusNode,
      genderFocusNode,
      dobFocusNode;

  void initState() {
    super.initState();
    firstNameFocusNode = FocusNode();
    dobFocusNode = FocusNode();
    genderFocusNode = FocusNode();
    lastNameFocusNode = FocusNode();
    middleNameFocusNode = FocusNode();
  }

  void unfocus() {
    firstNameFocusNode.unfocus();
    middleNameFocusNode.unfocus();
    lastNameFocusNode.unfocus();
    genderFocusNode.unfocus();
    dobFocusNode.unfocus();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          context: context, title: "Personal Information", elevation: 0.0),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "Please provide the Information required below",
                  style: h4BlackBold,
                ),
                SizedBox(height: 5),
                personalInformationDetails(
                  title: "Code",
                  enabled: false,
                  hintText: "Code",
                ),
                SizedBox(
                  height: 5,
                ),
                personalInformationDetails(
                  title: "First Name",
                  enabled: true,
                  hintText: "First Name",
                ),
                SizedBox(
                  height: 5,
                ),
                personalInformationDetails(
                  title: "Middle Name",
                  enabled: true,
                  hintText: "Middle Name",
                ),
                SizedBox(
                  height: 5,
                ),
                personalInformationDetails(
                  title: "Last Name",
                  enabled: true,
                  hintText: "Last Name",
                ),
                SizedBox(
                  height: 5,
                ),
                personalInformationDetails(
                  title: "Gender",
                  enabled: true,
                  hintText: "Gender",
                ),
                SizedBox(
                  height: 5,
                ),
                personalInformationDetails(
                  title: "Date Of Birth",
                  enabled: true,
                  hintText: "DOB",
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonTheme(
                  minWidth: 500,
                  height: 50,
                  child: FlatButton(
                    color: PRIMARYCOLOR,
                    onPressed: onContinue,
                    child: Text(
                      "Continue",
                      style: h4White,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    
  }
void onContinue() {
    unfocus();
    Navigator.push(context,MaterialPageRoute(builder: (context) => FinalPersonalInformationPage()));
}
  
}