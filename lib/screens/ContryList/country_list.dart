import 'package:flutter/material.dart';
import 'package:myapp1/models/country_model.dart';

import 'SigleCountry.dart';
class CountryList extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        title:Text('Countries')
      ),

      body: ListView.builder(
         itemCount: countries.length,
         itemBuilder: (BuildContext context, int index){

          return Column(
            children: <Widget>[
              Container(
                
                child: Card(
                  color:Colors.blue[200],
                  child: ListTile(
                    leading: Image(
                            image:AssetImage(countries[index].flag),
                            fit:BoxFit.cover
                    ),
                    title: Text(countries[index].name),
                    subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'
                    ),
                      onTap: () {
                          Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (context) => SingleCountry(countries[index])
                          ),
                        );
                    },
                    //trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
              )
            ]
          );

           
         }
      ),
    );
  }
}