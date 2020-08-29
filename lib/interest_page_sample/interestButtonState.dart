import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/interest_page_sample/interestButton.dart';



class InterestButtonState extends State<InterestButton> {
  var isPress = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        //color:
        color: isPress ? Colors.blue : Colors.grey,
        onPressed: () => setState(() {
          isPress = !isPress;
          widget.onPresser(isPress, widget.interest);
        }),

        child: Container(
          width: widget.width * 50,
          height: widget.height * 8,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              widget.interest,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}

