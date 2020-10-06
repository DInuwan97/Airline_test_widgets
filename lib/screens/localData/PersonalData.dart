import 'dart:async';

import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

enum Gender {
  Male,
  Female,
}

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  final List<String> titles = <String>['Ms.', 'Mrs.'];
  String selectedTitle = 'Mrs.';
  Gender _gender = Gender.Male;
  final _form = GlobalKey<FormState>();
  bool isLoading = false;

  void _submitForm() async {
    final bool isFormValid = _form.currentState.validate();
    if (!isFormValid) return;

    setState(() {
      isLoading = true;
    });
    var timer = new Timer(const Duration(seconds: 2), () {
      _form.currentState.save();
      setState(() {
        isLoading = false;
      });
      final snackbar = SnackBar(
        content: Text('Personal data was saved', textAlign: TextAlign.center),
        elevation: 3,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    });

    //timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final genderWidth = MediaQuery.of(context).size.width * 0.8;

    return Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromRGBO(235, 238, 245, 0.6),
        ),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.only(left: 22, bottom: 2),
                child: Text(
                  'TITLE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(87, 87, 87, 0.7)),
                ),
              ),
              Material(
                elevation: 3,
                shadowColor: Colors.black38,
                borderRadius: BorderRadius.circular(20),
                child: DropdownButtonFormField(
                  elevation: 2,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                  value: selectedTitle,
                  onChanged: (String value) =>
                      setState(() => selectedTitle = value),
                  selectedItemBuilder: (BuildContext context) {
                    return titles.map<Widget>((String t) {
                      return Text(
                        t,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }).toList();
                  },
                  items: titles.map((String t) {
                    return DropdownMenuItem<String>(
                      child: Text(
                        t,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value: t,
                    );
                  }).toList(),
                  iconEnabledColor: Colors.black54,
                  dropdownColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 22, top: 0, right: 10, bottom: 0),
                    fillColor: Colors.white,
                    filled: true,
                    errorStyle: TextStyle(fontSize: 0, height: 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 22, bottom: 2),
                child: Text(
                  'FIRSTNAME',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(87, 87, 87, 0.7)),
                ),
              ),
              Material(
                elevation: 3,
                shadowColor: Colors.black38,
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  initialValue: "Sachin",
                  validator: (value) {
                    if (value.isEmpty) {
                      return "";
                    }
                    return null;
                  },
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsets.only(left: 22, top: 0, right: 10, bottom: 0),
                    hintText: 'Enter your first name',
                    hintStyle: TextStyle(
                      color: Colors.grey[450],
                      fontWeight: FontWeight.bold,
                    ),
                    errorStyle: TextStyle(fontSize: 0, height: 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 22, bottom: 2),
                child: Text(
                  'LASTNAME',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(87, 87, 87, 0.7)),
                ),
              ),
              Material(
                elevation: 3,
                shadowColor: Colors.black38,
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  initialValue: "Athukorala",
                  validator: (value) {
                    if (value.isEmpty) {
                      return "";
                    }
                    return null;
                  },
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsets.only(left: 22, top: 0, right: 10, bottom: 0),
                    hintText: 'Enter your last name',
                    hintStyle: TextStyle(
                      color: Colors.grey[450],
                      fontWeight: FontWeight.bold,
                    ),
                    errorStyle: TextStyle(fontSize: 0, height: 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 22, bottom: 2),
                child: Text(
                  'DATE OF BIRTH',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(87, 87, 87, 0.7)),
                ),
              ),
              Material(
                elevation: 3,
                shadowColor: Colors.black38,
                borderRadius: BorderRadius.circular(20),
                child: DateTimeField(
                  initialValue: DateTime.parse('1997-05-26'),
                  validator: (value) {
                    if (value == null) {
                      return "";
                    }
                    return null;
                  },
                  format: DateFormat("yMMMMd"),
                  onShowPicker: (context, currentValue) {
                    return showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2100));
                  },
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 22, top: 0, right: 10, bottom: 0),
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: Colors.black54,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your birthday',
                    hintStyle: TextStyle(
                      color: Colors.grey[450],
                      fontWeight: FontWeight.bold,
                    ),
                    errorStyle: TextStyle(fontSize: 0, height: 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: genderWidth,
                child: Row(
                  children: [
                    Container(
                      width: genderWidth * 0.5,
                      child: RadioListTile(
                        title: const Text(
                          'MALE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(66, 66, 66, 1),
                          ),
                        ),
                        value: Gender.Male,
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: genderWidth * 0.5,
                      child: RadioListTile(
                        title: const Text(
                          'FEMALE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(66, 66, 66, 1),
                          ),
                        ),
                        value: Gender.Female,
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                elevation: 6,
                shadowColor: Colors.black87,
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                  onPressed: _submitForm,
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      )),
                  child: isLoading
                      ? Container(
                          height: 20,
                          width: 20,
                          child: Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              strokeWidth: 3,
                            ),
                          ),
                        )
                      : const Text(
                          'SAVE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
