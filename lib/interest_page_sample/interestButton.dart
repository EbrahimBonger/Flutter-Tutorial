import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/interest_page_sample/interestButtonState.dart';

class InterestButton extends StatefulWidget {
  final String interest;
  final double width;
  final double height;

  final Function(bool isPressed, String interest) onPresser;

  InterestButton(
      {Key key, this.interest, this.width, this.height, this.onPresser})
      : super(key: key);

  @override
  InterestButtonState createState() => InterestButtonState();
}
