
import 'package:flutter/material.dart';

class SideNavigationDrawer extends StatelessWidget{

  Widget showDrawer(){
    return Drawer(
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
       _createHeader(),
       _createDrawerItem(
          icon: Icons.people,
          text: 'Meet People',
          //onTap: () => Navigator.pushReplacementNamed(context, DrawerRoutes.contacts),
        ),

       _createDrawerItem(
          icon: Icons.event, 
          text: 'Events',
         // onTap: () => Navigator.pushReplacementNamed(context, DrawerRoutes.events),
        ),


       _createDrawerItem(
          icon: Icons.insert_photo, 
          text: 'Gallery',
         // onTap: () => Navigator.pushReplacementNamed(context, DrawerRoutes.notes),
        ),

        Divider(),
       _createDrawerItem(icon: Icons.collections_bookmark, text:'Steps'),
       _createDrawerItem(icon: Icons.access_alarms, text: 'Time Slots'),
       _createDrawerItem(icon: Icons.contact_mail, text: 'Contact Us'),
       _createDrawerItem(icon: Icons.settings, text: 'Settings'),
       Divider(),
       _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
      
    ],
  ),
            );
  }


  Widget _createHeader() {
  return DrawerHeader(

      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
    
          image: DecorationImage(
              fit: BoxFit.fill,
              image:  AssetImage('assets/images/athens.png')
          )
      ),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 20.0,
            left: 16.0,
            child: Text("Sri Lankan Airlines",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400))),
      ]));
}




Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}

  @override
  Widget build(BuildContext context) {
    return showDrawer();
  }
}