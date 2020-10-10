import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp1/models/country_model.dart';


class SingleCountry extends StatelessWidget {

  final Country country;

  const SingleCountry(this.country);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name)
      ),

      body: MyStatefulWidget()
      
    );
  }
}




// stores ExpansionPanel state information
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.address,
    this.openHours,
    this.contactNumber,
    this.email,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
  String address;
  List<String> openHours;
  String contactNumber;
  String email;

}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: cityOffices_c1[index].name,
      expandedValue: cityOffices_c1[index].contactNumber,
      openHours: cityOffices_c1[index].openHours,
      contactNumber:cityOffices_c1[index].contactNumber,
      email:cityOffices_c1[index].email,
      address: cityOffices_c1[index].address,
    );
  });
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<Item> _data = generateItems(cityOffices_c1.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SingleChildScrollView(
        child: Container(
           
          child: _buildPanel(),
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return Card(
      color:Colors.blue[200],
      child: ExpansionPanelList(
        
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _data[index].isExpanded = !isExpanded;
          });
        },
        children: _data.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(
                  item.headerValue,
                  style:TextStyle(
                    fontSize:18,
                    fontWeight: FontWeight.bold
                  )
                ),
              );
            },
            body:contactDetails(item,context),
            
           
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }




Widget contactDetails(Item item,BuildContext context){
return Column(
              children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,right:16.0,bottom:8.0),
                    child: Container(
                        height:185,
                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(

                       gradient: LinearGradient(
                       colors: [Colors.blueAccent,Colors.blue[600],Colors.blue[300]],
                      //begin: Alignment.topCenter,
                      //end: Alignment.bottomCenter,
                      ),

                       borderRadius: BorderRadius.all(
                        Radius.circular(20.0)
                      )

                      ),


                      child:Column(
                        children: <Widget>[
                               Row(
                                children: <Widget>[
                                       Padding(
                                          padding: const EdgeInsets.only(top:8.0,left:15.0),
                                          child: Icon(
                                            Icons.info_outline,
                                            color: Colors.white,
                                            size:18
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0,left:2.0),
                                          child: Text(
                                            'Contact Details',
                                            style:TextStyle(
                                              color:Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize:17
                                            )
                                          ),
                                        ),
                                ],
                              ),

                              Row(
                                children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left:36.0),
                                          child: Text(
                                            item.headerValue,
                                            style:TextStyle(
                                              color:Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize:14
                                            )
                                          ),
                                        ),
                                ],
                              ),

   Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Divider(
                      color: Colors.blue[900].withOpacity(0.7),
                      thickness: 3,
                     // indent: 50,
                  ),
                ),

              Row(
                    children: <Widget>[
                           Padding(
                              padding: const EdgeInsets.only(top:0.0,left:35.0),
                              child: Icon(
                                FontAwesomeIcons.locationArrow,
                                color: Colors.white,
                                size:12
                              ),
                        ),

                    Padding(
                          padding: const EdgeInsets.only(top:0.0,left:2.0),
                          child: Text(
                            item.address,
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:14
                            )
                          ),
                    ),

            ],
          ),


                  Row(
                    children: <Widget>[
                           Padding(
                              padding: const EdgeInsets.only(top:2.0,left:35.0),
                              child: Icon(
                                FontAwesomeIcons.mobileAlt,
                                color: Colors.white,
                                size:12
                              ),
                        ),

                    Padding(
                          padding: const EdgeInsets.only(top:2.0,left:2.0),
                          child: Text(
                            '${item.contactNumber}',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:14
                            )
                          ),
                    ),

                  ],
                ),


                            Row(
                    children: <Widget>[
                           Padding(
                              padding: const EdgeInsets.only(top:2.0,left:35.0),
                              child: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.white,
                                size:12
                              ),
                        ),

                    Padding(
                          padding: const EdgeInsets.only(top:2.0,left:2.0),
                          child: Text(
                            item.email,
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:14
                            )
                          ),
                    ),

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Divider(
                      color: Colors.blue[900].withOpacity(0.7),
                      thickness: 3,
                     // indent: 50,
                  ),
                ),

                Row(
                    children: <Widget>[
                           Padding(
                              padding: const EdgeInsets.only(top:0.0,left:35.0),
                              child: Icon(
                                FontAwesomeIcons.clock,
                                color: Colors.white,
                                size:12
                              ),
                        ),

                    Padding(
                          padding: const EdgeInsets.only(top:0.0,left:2.0),
                          child: Text(
                            'Open Hours',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize:14
                            )
                          ),
                    ),

                  ],
                ),

                Row(
                    children: <Widget>[
                  

                    Padding(
                          padding: const EdgeInsets.only(left:50.0),
                          child: Text(
                            '${item.openHours[0]} to ${item.openHours[1]}',
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize:14
                            )
                          ),
                    ),

                    Spacer(),

                    _officeOpenStatus()

                  ],
                ),



                        ],
                      )
                    ),
                  )
              ]
          );
}


  Widget _officeOpenStatus() {
    return Padding(
      padding: const EdgeInsets.only(right:25.0),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
          decoration: BoxDecoration(
              color: Colors.greenAccent[400],
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Row(
            children: <Widget>[
              Text("Daily Open",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold))
            ],
          )),
    );
  }


}
