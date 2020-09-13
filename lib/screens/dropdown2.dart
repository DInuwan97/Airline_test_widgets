import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:select_dialog/select_dialog.dart';



class Dropdown2 extends StatefulWidget {
  @override
  _Dropdown2State createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {

   String ex1 = "Simple Example";
  String ex2 = "Model Example";
  UserModel ex3 = UserModel(name: "Select an Airport");
  UserModel ex4 = UserModel(name: "Online Example");

  // final modelItems = List.generate(
  //   50,
  //   (index) => UserModel(
  //     avatar: "https://i.imgur.com/lTy4hiN.jpg",
  //     name: "$index",
  //     id: "$index",
  //     createdAt: DateTime.now(),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Select Dialog Example"),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            // RaisedButton(
            //   child: Text(ex1),
            //   onPressed: () {
            //     SelectDialog.showModal<String>(
            //       context,
            //       label: "Simple Example",
            //       titleStyle: TextStyle(color: Colors.brown),
            //       showSearchBox: false,
            //       selectedValue: ex1,
            //       backgroundColor: Colors.grey,
            //       items: List.generate(50, (index) => "Item $index"),
            //       onChange: (String selected) {
            //         setState(() {
            //           ex1 = selected;
            //         });
            //       },
            //     );
            //   },
            // ),
            // RaisedButton(
            //   child: Text(ex2),
            //   onPressed: () {
            //     SelectDialog.showModal<UserModel>(
            //       context,
            //       label: "Model Example",
            //       items: modelItems,
            //       onChange: (UserModel selected) {
            //         setState(() {
            //           ex2 = selected.name;
            //         });
            //       },
            //     );
            //   },
            // ),



            RaisedButton(
              child: Text(ex3.name),
              onPressed: () {
                SelectDialog.showModal<UserModel>(
                  
                  context,
                  label: "Select Airport",
                  items: userList,
                  selectedValue: ex3,
                  itemBuilder:
                  
                      (BuildContext context, UserModel item, bool isSelected) {
                    return Container(
                      width:MediaQuery.of(context).size.width * 1.5,
                      decoration: !isSelected
                          ? null
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green[100],
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(item.avatar),
                        ),
                        selected: isSelected,
                        title: Text(item.name),
                        subtitle: Text(item.createdAt.toString()),
                      ),
                    );
                  },
                  onChange: (selected) {
                    setState(() {
                      ex3 = selected;
                    });
                  },
                );
              },
            ),



            // RaisedButton(
            //   child: Text(ex4.name),
            //   onPressed: () {
            //     SelectDialog.showModal<UserModel>(
            //       context,
            //       label: "Online Example",
            //       selectedValue: ex4,
            //       onFind: (String filter) => getData(filter),
            //       onChange: (UserModel selected) {
            //         setState(() {
            //           ex4 = selected;
            //         });
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }



  

}

class UserModel {
  final String id;
  final String createdAt;
  final String name;
  final String avatar;


  UserModel({this.id, this.createdAt, this.name, this.avatar});


  @override
  String toString() => name;

  @override
  operator ==(o) => o is UserModel && o.id == id;

  @override
  int get hashCode => id.hashCode^name.hashCode^createdAt.hashCode;

}

final List<UserModel> userList = [
  UserModel(
    id:"1",
    createdAt:"2020/07/22",
    name:"Dinuka Perera",
    avatar:"https://i.imgur.com/lTy4hiN.jpg"
  ),
  UserModel(
    id:"2",
    createdAt:"2020/07/22",
    name:"Dinuwan Kalubowila",
    avatar:"https://i.imgur.com/lTy4hiN.jpg"
  ),
  UserModel(
    id:"3",
    createdAt:"2020/07/22",
    name:"Pawan Piumal",
    avatar:"https://i.imgur.com/lTy4hiN.jpg"
  ),
  UserModel(
    id:"4",
    createdAt:"2020/07/22",
    name:"Sachin Piumal",
    avatar:"https://i.imgur.com/lTy4hiN.jpg"
  ),
  UserModel(
    id:"5",
    createdAt:"2020/07/22",
    name:"iroshan Krish",
    avatar:"https://i.imgur.com/lTy4hiN.jpg"
  )
];