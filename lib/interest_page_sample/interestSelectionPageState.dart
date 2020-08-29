import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/main.dart';

import '../interest_page_sample/interestButton.dart';
import '../interest_page_sample/interestSelectionPage.dart';

class InterestSelectionPageState extends State<InterestSelectionPage> {

final interestSel = [
  'A more active lifestyle',
  'Healthy eating',
  'Receive or offer support',
  'Mental health',
  'Trying something new',
];

  bool pressAttention = false;
  var selectedInterest = [];

  Widget _buildInterest(double width, double height, String interest) {
    return InterestButton(
      interest: interest,
      width: width,
      height: height,
      onPresser: (isHighlighted, interest) {
        if (isHighlighted == true) {
          setState(() {
            selectedInterest.add(interest);
            print('Selected: ' + interest);
          });
        } else {
          setState(() {
            selectedInterest.remove(interest);
            print('Unselected: ' + interest);
          });
        }
      },
    );
  }

  final pad = Padding(
    padding: EdgeInsets.only(top: 24),
  );

  @override
  Widget build(BuildContext context) {
    /////////////////-----responsive-----////////////////////////
    var _fullwidth = MediaQuery.of(context).size.width;
    var _fullheight = MediaQuery.of(context).size.height;

    var _widt = MediaQuery.of(context).size.width / 100;
    var _high = MediaQuery.of(context).size.height / 100;
    /////////////////-----responsive-----////////////////////////

    return Container(
      //padding: EdgeInsets.only(top: 30),
      color: Colors.white,
      //height: MediaQuery.of(context).copyWith().size.height / 3,
      //width: 100,

      child: Column(
        children: <Widget>[
          const SizedBox(height: 45),
          // change to sizedBox to specify the hieght

          Image(
            width: 30 * _widt,
            height: 10 * _high,
            image: AssetImage('assets/icon.png'),
          ),

          const SizedBox(height: 25),
          //change to sizedBox to specify the hieght
          // head texts
          Container(
            width: _widt * 90,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "What's on your mind?",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 20,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(height: 25),
                Text(
                  "Choose one or multiple options. You can edit these later.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          Expanded(
            child: Container(
              child: Column(
                children: [
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: interestSel
                        .map((interest) =>
                        _buildInterest(_widt, _high, interest))
                        .toList(),
                  ),
                  const SizedBox(height: 25),
                  MaterialButton(
                    color: Colors.red,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      // print out the list of interest that users picked
                      //
                    },
                    //padding: EdgeInsets.all(2.0 * _widt),
                    //color: Colors.red,
                    child: Container(
                      width: _widt * 80,
                      height: _high * 8,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Continue",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 50),

          //wrap the continue with row

//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: ButtonTheme(
//              minWidth: 350.0,
//              height: 50,
//              child: MaterialButton(
//                color: Colors.redAccent,
//                shape: new RoundedRectangleBorder(
//                    borderRadius: new BorderRadius.circular(30.0)),
//                onPressed: () {},
//                child: SizedBox(
//                  //width: double.maxFinite,
//                  child: Text(
//                    'Continue',
//                    textAlign: TextAlign.center,
//                    style: TextStyle(
//                        fontWeight: FontWeight.w500,
//                        color: Colors.white,
//                        fontSize: 16,
//                        decoration: TextDecoration.none),
//                  ),
//                ),
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}