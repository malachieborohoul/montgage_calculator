import 'package:flutter/material.dart';
import 'dart:math';

class MortgageCalculator extends StatefulWidget {
  @override
  State<MortgageCalculator> createState() => _MortgageCalculatorState();
}

class _MortgageCalculatorState extends State<MortgageCalculator> {
  double _downPayment = 0.0;
  int _downPaymentPercent = 0;
  double _homePrice = 0.0;
  int _interestRate = 0;
  int _lengthLoan = 0;
  double _principal = 0.0;
  double _interestRatePer = 0.0;
  int _numberPedriod = 0;
  double _monthlyPayment = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Text(
                    "Montgage",
                    style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 62, 55, 85)),
                  ),
                  Text(
                    "Calculator",
                    style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 62, 55, 85)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270.0, top: 15.0),
            child: Column(
              children: [
                Text("Home price", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 350.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.5)),
                    child: Row(
                      children: [
                        Text(
                          "    \$ ",
                          style: TextStyle(fontSize: 20.0, color: Colors.grey),
                        ),
                        Text(
                          " ${_homePrice.toStringAsFixed(3)}",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 107, 103, 126)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 8.0),
                  child: Slider(
                      value: _homePrice,
                      min: 0,
                      max: 1000,
                      activeColor: Color.fromARGB(255, 171, 98, 206),
                      inactiveColor: Colors.transparent,
                      divisions: 20,
                      onChanged: (double newVal) {
                        setState(() {
                          _homePrice = newVal;
                        });
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 256.0, bottom: 10.0),
            child: Column(
              children: [
                Text("Down payment", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:12.0),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 350.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.5)),
                    child: Row(
                      children: [
                        Text(
                          "    \$ ",
                          style: TextStyle(fontSize: 20.0, color: Colors.grey),
                        ),
                        Text(
                          " ${_downPayment.toStringAsFixed(3)}",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 107, 103, 126)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170.0),
                          child: Text(
                            "25%",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 8.0),
                  child: Slider(
                      value: _downPayment,
                      min: 0,
                      max: 1000,
                      divisions: 20,
                      activeColor: Color.fromARGB(255, 171, 98, 206),
                      inactiveColor: Colors.transparent,
                      onChanged: (double newVal) {
                        setState(() {
                          _downPayment = newVal;
                        });
                      }),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 110.0,
                ),
                child: Text("Length of loan",
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110.0),
                child: Text("years", style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        _lengthLoan = 30;
                      });
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      width: 60.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 171, 98, 206),
                          borderRadius: BorderRadius.circular(17.0)),
                      child: Text("30",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        _lengthLoan = 20;
                      });
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      width: 60.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 239, 250),
                          borderRadius: BorderRadius.circular(17.0)),
                      child: Text("20",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 20.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        _lengthLoan = 15;
                      });
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      width: 60.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 239, 250),
                          borderRadius: BorderRadius.circular(17.0)),
                      child: Text("15",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 20.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        _lengthLoan = 10;
                      });
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      width: 60.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 239, 250),
                          borderRadius: BorderRadius.circular(17.0)),
                      child: Text("10",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 20.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 256.0, top: 15.0),
            child: Column(
              children: [
                Text("Interest rate", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 350.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "$_interestRate",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 107, 103, 126)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 255.0),
                          child: Text(
                            "%",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 12.0),
                child: Slider(
                    value: _interestRate.toDouble(),
                    min: 0,
                    max: 100,
                    activeColor: Color.fromARGB(255, 171, 98, 206),
                    inactiveColor: Colors.transparent,
                    onChanged: (double newVal) {
                      setState(() {
                        _interestRate = newVal.round();
                      });
                    }),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _principal = _homePrice - _downPayment;
                    _interestRatePer = (_interestRate / 100) / 12;
                    _numberPedriod = _lengthLoan * 12;
                    _monthlyPayment = _principal *
                        (_interestRatePer *
                            pow((1 + _interestRatePer), _numberPedriod)) /
                        (pow((1 + _interestRatePer), _numberPedriod) - 1);
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Payment(_monthlyPayment, _homePrice, _downPayment,
                        _lengthLoan, _interestRate);
                  }));
                },
                child: Container(
                    alignment: Alignment.center,
                    width: 350.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 57, 41, 84),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    )),
              )),
        ],
      ),
    ));
  }
}

class Payment extends StatelessWidget {
  double _monthPayment;
  double _homePrice;
  double _downPayment;
  int _lengthLoan;
  int _interestRate;

  Payment(this._monthPayment, this._homePrice, this._downPayment,
      this._lengthLoan, this._interestRate);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 41, 84),
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        Text(
                          "Monthly",
                          style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text("Payment",
                            style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 57, 41, 84),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(150.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 255, 108, 122),
                                      blurRadius: 40.0)
                                ]),
                            child: Text(
                                "\$ ${_monthPayment.toStringAsFixed(3)}",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 400.0,
                    height: 400.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 171, 98, 206),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 120.0),
                              child: Text("Home price"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text("${_homePrice.toStringAsFixed(3)}"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 91, 224, 191),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 100.0),
                                child: Text("Down payment"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child:
                                    Text("${_downPayment.toStringAsFixed(3)}"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 225, 108, 122),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 130.0),
                                child: Text("Length of loan"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Text("${_lengthLoan}"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 182, 106),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 140.0),
                                child: Text("Interest rater"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Text("$_interestRate"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  width: 330.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 57, 41, 84),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Text(
                                    "Recalculate",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600),
                                  )),
                            )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}