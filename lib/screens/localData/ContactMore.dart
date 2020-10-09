import 'dart:async';

import 'package:flutter/material.dart';

class ContactAndMore extends StatefulWidget {
  @override
  _ContactAndMoreState createState() => _ContactAndMoreState();
}

class _ContactAndMoreState extends State<ContactAndMore> {
  final List<String> _countryCodes = [
    'Afghanistan (+93)',
    'Albania (+355)',
    'Algeria (+213)',
    'Baharain (+973)',
    'Bangaladesh (+880)',
    'Belarus (+375)',
    'Canada (+1)',
    'Chile (+56)',
    'China (+86)',
    'Colombia (+57)',
    'Denmark (+45)',
    'Egypt (+20)',
    'France (+33)',
    'Georgia (+995)',
    'Hong Kong (+852)',
    'Sri Lanka (+94)'
  ];
  final List<String> _frePrograms = [
    'None',
    'Miles-Bonus',
    'Aeroplan',
    'Flying Returns',
    'LifeMiles',
    'Infinity MileageLands',
    'Phoenix Miles',
    'Connect Miles'
  ];
  String _selectedCountryCode = 'Sri Lanka (+94)';
  String _selectedFreProgram = 'Aeroplan';
  final _form = GlobalKey<FormState>();
  bool isLoading = false;

  // form styles
  final OutlineInputBorder _enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(20),
  );
  final OutlineInputBorder _focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue[300],
      width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
  );
  final OutlineInputBorder _errorBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
  );
  final OutlineInputBorder _focuseErrordBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
  );

  void _submitForm() async {
    final bool isFormValid = _form.currentState.validate();
    if (!isFormValid) return;

    setState(() {
      isLoading = true;
    });
    new Timer(const Duration(seconds: 2), () {
      _form.currentState.save();
      setState(() {
        isLoading = false;
      });
      final snackbar = SnackBar(
        content: Text('Contacts data was saved', textAlign: TextAlign.center),
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
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 22, bottom: 2),
              child: const Text(
                'EMAIL',
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
                initialValue: "sachinathu97@gmail.com",
                validator: (value) {
                  bool r = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value);
                  if (value.isEmpty || !r) {
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
                  hintText: 'Enter your email address',
                  hintStyle: TextStyle(
                    color: Colors.grey[450],
                    fontWeight: FontWeight.bold,
                  ),
                  errorStyle: const TextStyle(fontSize: 0, height: 0),
                  enabledBorder: _enabledBorder,
                  focusedBorder: _focusedBorder,
                  errorBorder: _errorBorder,
                  focusedErrorBorder: _focuseErrordBorder,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 22, bottom: 2),
              child: const Text(
                'COUNTRY CODE',
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
                value: _selectedCountryCode,
                onChanged: (String value) =>
                    setState(() => _selectedCountryCode = value),
                selectedItemBuilder: (BuildContext context) {
                  return _countryCodes.map<Widget>((String t) {
                    return Text(
                      t,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
                items: _countryCodes.map((String t) {
                  return DropdownMenuItem<String>(
                    child: Text(
                      t,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: t,
                  );
                }).toList(),
                iconEnabledColor: Colors.black54,
                //dropdownColor: Colors.white,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 22, top: 0, right: 10, bottom: 0),
                  fillColor: Colors.white,
                  filled: true,
                  errorStyle: const TextStyle(fontSize: 0, height: 0),
                  enabledBorder: _enabledBorder,
                  focusedBorder: _focusedBorder,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 22, bottom: 2),
              child: const Text(
                'PHONE NUMBER',
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
                initialValue: "0777073470",
                validator: (value) {
                  if (value.isEmpty || value.length != 10) {
                    return "";
                  }
                  return null;
                },
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.only(left: 22, top: 0, right: 10, bottom: 0),
                  hintText: 'Enter your contact number',
                  hintStyle: TextStyle(
                    color: Colors.grey[450],
                    fontWeight: FontWeight.bold,
                  ),
                  suffixText: 'Ex: 0777343455',
                  suffixStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  errorStyle: const TextStyle(fontSize: 0, height: 0),
                  enabledBorder: _enabledBorder,
                  focusedBorder: _focusedBorder,
                  errorBorder: _errorBorder,
                  focusedErrorBorder: _focuseErrordBorder,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 22, bottom: 2),
              child: const Text(
                'FREQUENT FLYER PROGRAM',
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
                value: _selectedFreProgram,
                onChanged: (String value) =>
                    setState(() => _selectedFreProgram = value),
                selectedItemBuilder: (BuildContext context) {
                  return _frePrograms.map<Widget>((String t) {
                    return Text(
                      t,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
                items: _frePrograms.map((String t) {
                  return DropdownMenuItem<String>(
                    child: Text(
                      t,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: t,
                  );
                }).toList(),
                iconEnabledColor: Colors.black54,
                //  dropdownColor: Colors.white,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 22, top: 0, right: 10, bottom: 0),
                  fillColor: Colors.white,
                  filled: true,
                  errorStyle: const TextStyle(fontSize: 0, height: 0),
                  enabledBorder: _enabledBorder,
                  focusedBorder: _focusedBorder,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 22, bottom: 2),
              child: const Text(
                'FREQUENT FLYER NUMBER',
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
                initialValue: "N563",
                validator: (value) {
                  if (value.isEmpty || value.length > 10) {
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
                  errorStyle: const TextStyle(fontSize: 0, height: 0),
                  enabledBorder: _enabledBorder,
                  focusedBorder: _focusedBorder,
                  errorBorder: _errorBorder,
                  focusedErrorBorder: _focuseErrordBorder,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
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
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
