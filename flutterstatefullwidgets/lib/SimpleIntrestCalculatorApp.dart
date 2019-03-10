import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SimpleIntrestCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIStateForm();
  }
}

class _SIStateForm extends State<SimpleIntrestCalculator> {
  var _formkey = GlobalKey<FormState>();
  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;
  var _currentItemSelected = '';

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  var displayResult = '';
  @override
  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Simple Intrest Calculator'),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.all(_minimumPadding * 2),
          child: ListView(
            children: <Widget>[
              getImageAsset(),
              Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: textStyle,
                  controller: principalController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter Prinicpal Amount';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal',
                      labelStyle: textStyle,
                      errorStyle:
                          TextStyle(color: Colors.yellowAccent, fontSize: 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: textStyle,
                    controller: roiController,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter Rate of Intrest';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Rate of Intrest',
                        hintText: 'In Percent',
                        labelStyle: textStyle,
                        errorStyle: TextStyle(
                            color: Colors.yellowAccent, fontSize: 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          controller: termController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter Time';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Term',
                              labelStyle: textStyle,
                              hintText: 'Time in years',
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                      Container(
                        width: _minimumPadding * 5,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _currentItemSelected,
                          onChanged: (String newSelectedValue) {
                            __onDropDownItemSelected(newSelectedValue);
                          },
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: _minimumPadding, top: _minimumPadding),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          textColor: Theme.of(context).primaryColorDark,
                          child: Text(
                            'Calculate',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_formkey.currentState.validate()) {
                                this.displayResult = _calculateTotalReturns();
                              }
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            'Reset',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              _reset();
                            });
                          },
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(_minimumPadding * 2),
                child: Text(
                  this.displayResult,
                  style: textStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;
    String result =
        'After $term years, your investment will be worth $totalAmountPayable $_currentItemSelected';
    return result;
  }

  void __onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  Widget getImageAsset() {
    AssetImage assetimage = AssetImage('images/money.png');
    Image image = Image(
      image: assetimage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }

  void _reset() {
    principalController.text = '';
    roiController.text = '';
    termController.text = '';
    displayResult = '';
    _currentItemSelected = _currencies[0];
  }
}
