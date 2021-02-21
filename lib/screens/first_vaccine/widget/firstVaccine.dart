
import 'package:covid_immunization_mobile/components/appBar.dart';
import 'package:covid_immunization_mobile/screens/first_vaccine/widget/widget.dart';
import 'package:covid_immunization_mobile/screens/second_vaccine/secondVaccine.dart';
import 'package:covid_immunization_mobile/specs/colors.dart';
import 'package:covid_immunization_mobile/specs/styles.dart';
import 'package:flutter/material.dart';

class FirstVaccinationPage extends StatefulWidget {
  @override
  _FirstVaccinationPageState createState() =>
      _FirstVaccinationPageState();
}

class _FirstVaccinationPageState extends State<FirstVaccinationPage> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController nameOfVaccineController =
      TextEditingController();
  final TextEditingController vaccineDateController = TextEditingController();
  
  FocusNode nameOfVaccineFocusNode, vaccineDateFocusNode;

void initState() {
    super.initState();
    nameOfVaccineFocusNode = FocusNode();
   vaccineDateFocusNode = FocusNode();
    
  }

  void unfocus() {
    nameOfVaccineFocusNode.unfocus();
   vaccineDateFocusNode.unfocus();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          context: context, title: "First Vaccination", elevation: 0.0),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Form(
              key:_key,
              child: Column(children: [
                  SizedBox(height: 10),
        Text(
          "Please provide the Information required below",
          style: h4BlackBold,
        ),
        SizedBox(height: 5),
        firstVaccineDetails(
          title: "Vaccination Center",
          enabled: false,
          hintText: "Vaccination Center",
        ),
        SizedBox(height: 5,),
        firstVaccineDetails(
           title: "Name Of Vaccine",
          enabled: true,
          hintText: "Name Of Vaccine",
        ),
        SizedBox(height: 5,),
        firstVaccineDetails(
           title: "Batch Number",
          enabled: false,
          hintText: "Batch Number",
        ),
        SizedBox(height: 5,),
        firstVaccineDetails(
           title: "Date Vaccine Given",
          enabled: true,
          hintText: "Date Vaccine Given",
        ),
        SizedBox(height: 5,),
        firstVaccineDetails(
           title: "Second Appointment Date",
          enabled: false,
          hintText: "Second Appointment Date",
        ),
        
        SizedBox(height: 10,),
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
              ],),
            ),
          ),
        ),
      ),
    );
  }

  void onContinue(){
    unfocus();
    if(_key.currentState.validate())
    Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondVaccinationPage()));
  }
}
