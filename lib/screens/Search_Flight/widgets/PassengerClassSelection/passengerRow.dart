import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.icon,this.onclick});
  final IconData icon;
  final Function onclick;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onclick, 
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width:40.0,
        height:40.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(
        icon,
        color: Colors.white,
      )
    );
  }
}

RowItemButton rowitemBtn = new RowItemButton();

class PassengerRowItem extends StatelessWidget{

  PassengerRowItem({this.title,this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(title,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold            ),),
            Text(description)
          ], 
        ),
        rowitemBtn 
      ],
    );
  }
}


class RowItemButton extends StatefulWidget {

  int count=0;
  
  @override
  _RowItemButtonState createState() => _RowItemButtonState();
}

class _RowItemButtonState extends State<RowItemButton> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                  child: RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onclick: (){
                      setState(() {
                        widget.count--;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Text(
                  widget.count<0? '0':widget.count.toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: widget.count!=0 ? Colors.blue[800]:Colors.grey[600]
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                  child: RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onclick: (){
                      setState(() {
                        widget.count++;
                      }); 
                    },
                  ),
                ),
              ],
            ),
    );
  }
}