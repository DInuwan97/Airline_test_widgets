import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'credit_card_model.dart';
import 'flutter_credit_card.dart';

class CreditCardForm extends StatefulWidget {
  const CreditCardForm({
    Key key,
    this.cardNumber,
    this.expiryDate,
    this.cardHolderName,
    this.cvvCode,
    @required this.onCreditCardModelChange,
    this.themeColor,
    this.textColor = Colors.black,
    this.cursorColor,
    this.localizedText = const LocalizedText(),
  })  : assert(localizedText != null),
        super(key: key);

  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final String cvvCode;
  final void Function(CreditCardModel) onCreditCardModelChange;
  final Color themeColor;
  final Color textColor;
  final Color cursorColor;
  final LocalizedText localizedText;

  @override
  _CreditCardFormState createState() => _CreditCardFormState();
}

class _CreditCardFormState extends State<CreditCardForm> {
  String cardNumber;
  String expiryDate;
  String cardHolderName;
  String cvvCode;
  bool isCvvFocused = false;
  Color themeColor;
  bool isLoading = false;

  void Function(CreditCardModel) onCreditCardModelChange;
  CreditCardModel creditCardModel;

  final MaskedTextController _cardNumberController =
      MaskedTextController(mask: '0000 0000 0000 0000');
  final TextEditingController _expiryDateController =
      MaskedTextController(mask: '00/00');
  final TextEditingController _cardHolderNameController =
      TextEditingController();
  final TextEditingController _cvvCodeController =
      MaskedTextController(mask: '0000');

  FocusNode cvvFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

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

  @override
  void initState() {
    super.initState();

    createCreditCardModel();

    onCreditCardModelChange = widget.onCreditCardModelChange;

    cvvFocusNode.addListener(textFieldFocusDidChange);

    _cardNumberController.addListener(() {
      setState(() {
        cardNumber = _cardNumberController.text;
        creditCardModel.cardNumber = cardNumber;
        onCreditCardModelChange(creditCardModel);
      });
    });

    _expiryDateController.addListener(() {
      setState(() {
        expiryDate = _expiryDateController.text;
        creditCardModel.expiryDate = expiryDate;
        onCreditCardModelChange(creditCardModel);
      });
    });

    _cardHolderNameController.addListener(() {
      setState(() {
        cardHolderName = _cardHolderNameController.text;
        creditCardModel.cardHolderName = cardHolderName;
        onCreditCardModelChange(creditCardModel);
      });
    });

    _cvvCodeController.addListener(() {
      setState(() {
        cvvCode = _cvvCodeController.text;
        creditCardModel.cvvCode = cvvCode;
        onCreditCardModelChange(creditCardModel);
      });
    });
  }

  void _submitForm() {
    final bool isFormValid = _form.currentState.validate();
    if (!isFormValid) return;

    setState(() {
      isLoading = true;
    });
    new Timer(const Duration(seconds: 5), () {
      _form.currentState.save();
      setState(() {
        isLoading = false;
      });
      final snackbar = SnackBar(
        content: Text('Payment success', textAlign: TextAlign.center),
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

  void textFieldFocusDidChange() {
    creditCardModel.isCvvFocused = cvvFocusNode.hasFocus;
    onCreditCardModelChange(creditCardModel);
  }

  void createCreditCardModel() {
    cardNumber = widget.cardNumber ?? '';
    expiryDate = widget.expiryDate ?? '';
    cardHolderName = widget.cardHolderName ?? '';
    cvvCode = widget.cvvCode ?? '';

    creditCardModel = CreditCardModel(
        cardNumber, expiryDate, cardHolderName, cvvCode, isCvvFocused);
  }

  @override
  void didChangeDependencies() {
    themeColor = widget.themeColor ?? Theme.of(context).primaryColor;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: themeColor.withOpacity(0.8),
        primaryColorDark: themeColor,
      ),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 22, bottom: 2),
                  child: const Text(
                    'CARD NUMBER',
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
                    controller: _cardNumberController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: widget.textColor,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 22, top: 0, right: 10, bottom: 0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: widget.localizedText.cardNumberHint,
                      errorStyle: const TextStyle(fontSize: 0, height: 0),
                      enabledBorder: _enabledBorder,
                      focusedBorder: _focusedBorder,
                      errorBorder: _errorBorder,
                      focusedErrorBorder: _focuseErrordBorder,
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 22, bottom: 2),
                  child: const Text(
                    'EXPIRY DATE',
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
                    controller: _expiryDateController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: widget.textColor,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 22, top: 0, right: 10, bottom: 0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: widget.localizedText.expiryDateHint,
                      errorStyle: const TextStyle(fontSize: 0, height: 0),
                      enabledBorder: _enabledBorder,
                      focusedBorder: _focusedBorder,
                      errorBorder: _errorBorder,
                      focusedErrorBorder: _focuseErrordBorder,
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 22, bottom: 2),
                  child: const Text(
                    'CVV',
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
                    focusNode: cvvFocusNode,
                    controller: _cvvCodeController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: widget.textColor,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 22, top: 0, right: 10, bottom: 0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: widget.localizedText.cvvHint,
                      errorStyle: const TextStyle(fontSize: 0, height: 0),
                      enabledBorder: _enabledBorder,
                      focusedBorder: _focusedBorder,
                      errorBorder: _errorBorder,
                      focusedErrorBorder: _focuseErrordBorder,
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    onChanged: (String text) {
                      setState(() {
                        cvvCode = text;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 22, bottom: 2),
                  child: const Text(
                    'CARD HOLDER',
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
                    controller: _cardHolderNameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    style: TextStyle(
                      color: widget.textColor,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 22, top: 0, right: 10, bottom: 0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: widget.localizedText.cardHolderHint,
                      errorStyle: const TextStyle(fontSize: 0, height: 0),
                      enabledBorder: _enabledBorder,
                      focusedBorder: _focusedBorder,
                      errorBorder: _errorBorder,
                      focusedErrorBorder: _focuseErrordBorder,
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Material(
                    elevation: 4,
                    shadowColor: Colors.black87,
                    borderRadius: BorderRadius.circular(20),
                    child: FlatButton(
                      onPressed: _submitForm,
                      textColor: Colors.white,
                      color: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: isLoading
                          ? Container(
                              height: 20,
                              width: 20,
                              child: const Center(
                                child: CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                  strokeWidth: 3,
                                ),
                              ),
                            )
                          : const Text(
                              'PAY',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
