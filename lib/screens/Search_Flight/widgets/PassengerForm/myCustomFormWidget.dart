import 'package:flutter/material.dart';
import '../PassengerClassSelection/reusable_widget.dart';
import '../PassengerClassSelection/constants.dart';
import '../../../Flight_Book/terms.dart';

import '../../../CheckIn/DateConvertor.dart';


class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  bool checkedBoxValue = false; 
  var gendertypes=['Mr','Mrs'];
  var airlines =['British Airways','Quantas','Lufthansa','Emirates','Qatar Airlines'];
  String firstname;
  String email;

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
        height: 470.0,
        child: ListView(
          children: [
            Container(
              height: 450.0,
              child: ReusableGradientwidget(
                gradient: [Colors.blue[300],Colors.blue[50]],
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adult',
                          style:kCabinClassTitleStyle),
                          Text('Please provide your name as in the passport')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Title.'),
                              SizedBox(width: 10.0),
                              dropdownwidget(
                                list: gendertypes,
                                initalvalue: 'Mr',
                              ),
                            ],
                          ),
                          ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 250.0
                                  ),
                                  child: TextFormField(
                                    onChanged: (String val){
                                      firstname = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'First Name',
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                          ),
                          ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 250.0
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Last Name',
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                              child: Text('Passenger Card',
                              style: kPassengerCardStyle),
                            ),
                            Row(
                              children: [
                                Text('Frequently Flying Airline'),
                                SizedBox(width: 10.0,),
                                dropdownwidget(
                                  list: airlines,
                                  initalvalue: 'British Airways',
                                ),
                              ],
                            ),
                            ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 250.0
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Frequent Flyer Number',
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                              ),
                      ],
                      ),
                    )
                  ],
                ),
                ),
              ),
            Container(
              height: 400.0,
              child: ReusableGradientwidget(
                gradient: [Colors.blue[300],Colors.blue[50]],
                cardChild: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                            child: Text(
                            'Contact Details',
                            style: kCabinClassTitleStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                            child: Text('We will use this contact details to send you your payment confirmation.'),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 250.0
                                  ),
                                  child: TextFormField(
                                    onChanged: (String val){
                                      email = val;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please enter some text';
                                      }else if(!value.contains('@')){
                                        return 'Not an Email';
                                      }
                                      return null;
                                    },
                                  ),
                          ),
                          ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 250.0
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Re-enter Email',
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please enter some text';
                                      }else if(!value.contains('@')){
                                        return 'Not an Email';
                                      }else if(value!=email){
                                        return 'Emails don not match';
                                      }
                                      return null;
                                    },
                                  ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: checkedBoxValue,
                                onChanged: (bool value){
                                  print(value);
                                  setState(() {
                                    checkedBoxValue=value;
                                  });
                                },
                              ),
                              Text('Notify Email')
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 250.0
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Mobile Number',
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please enter some text';
                                      }else if(!isNumeric(value)){
                                        return 'Enter only number';
                                      }
                                      return null;
                                    },
                                  ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ),
              ),
            Container(
              height: 350.0,
              child: ReusableGradientwidget(
                gradient: [Colors.blue[300],Colors.blue[50]],
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Emergency Contact Details',
                          style: kCabinClassTitleStyle,
                          ),
                          Text('In the Event of emergency contanct details of a person')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: 250.0
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Name',
                                      ),
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    ),
                          ),
                          ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: 250.0
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Mobile Number',
                                      ),
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'Please enter some text';
                                        }else if(!isNumeric(value)){
                                          return 'Enter only number';
                                        }
                                        return null;
                                      },
                                    ),
                            ),
                            Text('Please include country code')
                        ],
                      ),
                    )
                ],
                ),
                ),
              ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:20.0),
              width: 60.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue[700],
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                        print(firstname);
 
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context){
                          return TermsSelectionPage(
                            firstName: firstname,
                          );
                        })
                      );
                  }
                },
                child: Text('SUBMIT',
                style: kCabinClassTitleStyle,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




class dropdownwidget extends StatefulWidget {

  dropdownwidget({this.list,this.initalvalue});
  String initalvalue;
  List<String> list;
  @override
  _dropdownwidgetState createState() => _dropdownwidgetState();
}

class _dropdownwidgetState extends State<dropdownwidget> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.initalvalue;
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward,color: Colors.blue[900],),
      iconSize: 24,
      elevation: 16,
      underline: Container(
        height: 2,
        color: Colors.blue[900],
      ),
      items: widget.list.map((String eachGenderType){
        return DropdownMenuItem<String>(
          value: eachGenderType,
          child: Text(eachGenderType),
        );
      }).toList(),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
    );
  }
}