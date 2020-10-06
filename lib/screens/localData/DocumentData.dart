import 'dart:async';

import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class DocumentData extends StatefulWidget {
  @override
  _DocumentDataState createState() => _DocumentDataState();
}

class _DocumentDataState extends State<DocumentData> {
  final List<String> documentTypes = ['ID Card', 'Passport'];
  final List<String> countries = [
    'Afghanistan',
    'Albania',
    'Algeria',
    'Baharain',
    'Bangaladesh',
    'Belarus',
    'Canada',
    'Chile',
    'China',
    'Colombia',
    'Denmark',
    'Egypt',
    'France',
    'Georgia',
    'Hong Kong',
    'Sri Lanka'
  ];
  final List<String> nationalities = ['Sinhala', 'Tamil', 'Muslim'];
  String selectedDocType = 'ID Card';
  String selectedCountry = 'Sri Lanka';
  String selectedNationality = 'Sinhala';
  bool isBiometric = false;
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
        content: Text('Document data was saved', textAlign: TextAlign.center),
        elevation: 3,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                'DOCUMENT TYPE',
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
                value: selectedDocType,
                onChanged: (String value) =>
                    setState(() => selectedDocType = value),
                selectedItemBuilder: (BuildContext context) {
                  return documentTypes.map<Widget>((String t) {
                    return Text(
                      t,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
                items: documentTypes.map((String t) {
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
                'DOCUMENT NUMBER',
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
                initialValue: "dc123",
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
                  hintText: 'Enter your document number',
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
                'ISSUE DATE',
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
                initialValue: DateTime.parse('2020-02-21'),
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
                  hintText: 'Enter the issuing date',
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
                'DOCUMENT ISSUING COUNTRY',
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
                value: selectedCountry,
                onChanged: (String value) =>
                    setState(() => selectedCountry = value),
                selectedItemBuilder: (BuildContext context) {
                  return countries.map<Widget>((String t) {
                    return Text(
                      t,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
                items: countries.map((String t) {
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
                'EXPIRE DATE',
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
                initialValue: DateTime.parse('2020-02-21'),
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
                  hintText: 'Enter the expiry date',
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
                'NATIONALITY',
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
                value: selectedNationality,
                onChanged: (String value) =>
                    setState(() => selectedNationality = value),
                selectedItemBuilder: (BuildContext context) {
                  return nationalities.map<Widget>((String t) {
                    return Text(
                      t,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
                items: nationalities.map((String t) {
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
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                'THIS DOCUMENT IS BIOMETRIC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(66, 66, 66, 1),
                ),
              ),
              value: isBiometric,
              onChanged: (value) => setState(() => isBiometric = value),
            ),
            SizedBox(
              height: 18,
            ),
            Material(
              elevation: 4,
              shadowColor: Colors.black87,
              borderRadius: BorderRadius.circular(20),
              child: FlatButton(
                onPressed: _submitForm,
                textColor: Colors.white,
                color: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
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
      ),
    );
  }
}
