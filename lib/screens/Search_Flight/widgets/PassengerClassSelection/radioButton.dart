import 'package:flutter/material.dart';


enum CabinClass {Economy,PremiumEconomy,Business,First}

class CabinClassRadio extends StatefulWidget {

  CabinClass data = CabinClass.Economy;

  @override
  _CabinClassRadioState createState() => _CabinClassRadioState();
}

class _CabinClassRadioState extends State<CabinClassRadio> {

  CabinClass _cabinClass = CabinClass.Economy;
  Color selectedColor = Colors.blue[800];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          title: const Text(
            'Economy',
            style: TextStyle(
              fontSize: 20.0,
            )
          ),
          leading: Radio(
            value: CabinClass.Economy,
            groupValue: _cabinClass,
            onChanged: (CabinClass value) {
              setState(() {
                _cabinClass = value;
                widget.data = _cabinClass;
              });
            },
          ),
        ),
        ListTile(
          dense: true,
          title: const Text(
            'Premium Economy',
            style: TextStyle(
              fontSize: 20.0,
            )
            ),
          leading: Radio(
            value: CabinClass.PremiumEconomy,
            groupValue: _cabinClass,
            onChanged: (CabinClass value) {
              setState(() {
                _cabinClass = value;
                widget.data = _cabinClass;
              });
            },
          ),
        ),
        ListTile(
          dense: true,
          title: const Text(
            'Business',
            style: TextStyle(
              fontSize: 20.0
            )
            ),
          leading: Radio(
            value: CabinClass.Business,
            groupValue: _cabinClass,
            onChanged: (CabinClass value) {
              setState(() {
                _cabinClass = value;
                widget.data = _cabinClass;
              });
            },
          ),
        ),
        ListTile(
          dense: true,
          title: const Text(
            'First',
            style: TextStyle(
              fontSize: 20.0
            )
            ),
          leading: Radio(
            value: CabinClass.First,
            groupValue: _cabinClass,
            onChanged: (CabinClass value) {
              setState(() {
                _cabinClass = value;
                widget.data = _cabinClass;
              });
            },
          ),
        ),
      ],
    );
  }
}