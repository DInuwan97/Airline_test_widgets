import 'package:flutter/material.dart';
import 'package:myapp1/screens/SeatBooking/flight_seat_booking.dart';
import '../DateConvertor.dart';
import '../../Search_Flight/widgets/PassengerClassSelection/reusable_widget.dart';
import '../boardingpass.dart';

class checkInFormWidget extends StatefulWidget {
  @override
  _checkInFormWidgetState createState() => _checkInFormWidgetState();
}

class _checkInFormWidgetState extends State<checkInFormWidget> {
  DateConversion dc = DateConversion();
  String firstName;
  String lastName;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    height: 320.0,
                    child: ReusableGradientwidget(
                      gradient: [Colors.white,Colors.blue[200]],
                      cardChild: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(250.0, 5.0, 10.0, 0.0),
                              child: Text(dc.getDate(),
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: 70.0
                                    ),
                                    child: TextFormField(
                                      onChanged: (String val){
                                        firstName = val;
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: 70.0
                                    ),
                                    child: TextFormField(
                                      onChanged: (String val){
                                        lastName = val;
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Last Name',
                                      ),
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    ),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: 70.0
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Booking Reference or E-ticket Number',
                                      ),
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    ),
                                ),
                            ),

                          ],)
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    height: 50.0,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: (){
                         if (_formKey.currentState.validate()){
                           print(firstName);
                           Navigator.push(context, MaterialPageRoute(
                             builder: (context){
                              //  return BoardingPass(
                              //    firstname: firstName,
                              //    lastname: lastName,
                              //  );
                              return SeatBookingScreen(
                                  firstname: firstName,
                                  lastname: lastName,
                              );
                             }
                            )
                          );
                         }
                      },
                      child: Text('CHECK IN',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  )
                ],
              ),
            );
  }
}