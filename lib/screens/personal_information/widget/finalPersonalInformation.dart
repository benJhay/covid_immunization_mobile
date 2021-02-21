import 'package:covid_immunization_mobile/components/appBar.dart';
import 'package:covid_immunization_mobile/components/snackbar.dart';
import 'package:covid_immunization_mobile/screens/first_vaccine/widget/firstVaccine.dart';
import 'package:covid_immunization_mobile/screens/personal_information/widget/personalInfoWidget.dart';
import 'package:covid_immunization_mobile/specs/colors.dart';
import 'package:covid_immunization_mobile/specs/styles.dart';
import 'package:flutter/material.dart';

class FinalPersonalInformationPage extends StatefulWidget {
  @override
  _FinalPersonalInformationPageState createState() =>
      _FinalPersonalInformationPageState();
}

class _FinalPersonalInformationPageState extends State<FinalPersonalInformationPage> {
  // GlobalKey<ScaffoldState>key = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController residentialAddressController =
      TextEditingController();
  final TextEditingController houseNumberController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  FocusNode residentialAddressFocusNode, houseNumberFocusNode, areaFocusNode;

  @override
  void initState() {
    super.initState();
    residentialAddressFocusNode = FocusNode();
    areaFocusNode = FocusNode();
    houseNumberFocusNode = FocusNode();
  }

  void unfocus() {
    residentialAddressFocusNode.unfocus();
    areaFocusNode.unfocus();
    houseNumberFocusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: key,
      appBar: appBar(
          context: context, title: "Personal Information", elevation: 0.0),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Form(
              key: _key,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "You are Almost done! Add the following and that's it!",
                    style: h4BlackBold,
                  ),
                  SizedBox(height: 10),
                  personalInformationDetails(
                      title: "Residential Address",
                      enabled: true,
                      controller: residentialAddressController,
                      hintText: "Residential Address",
                      focusNode: residentialAddressFocusNode),
                  personalInformationDetails(
                      title: "House Number",
                      enabled: true,
                      controller: houseNumberController,
                      hintText: "House Number",
                      focusNode: houseNumberFocusNode),
                  personalInformationDetails(
                      title: "Area",
                      enabled: true,
                      controller: areaController,
                      hintText: "Your Area of residence",
                      focusNode: areaFocusNode),
                  personalInformationDetails(
                    title: "Region",
                    enabled: false,
                    hintText: "Region",
                  ),
                  personalInformationDetails(
                    title: "District",
                    enabled: false,
                    hintText: "District",
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
      ),
    );
  }

  void onContinue() {
    unfocus();
    if (_key.currentState.validate())
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => FirstVaccinationPage()));
  
  }
}
