
import 'package:flutter/material.dart';


class KdBoss extends StatefulWidget {

 var kelem;
  var erezmet;
  var sefat;
  var lije;

  KdBoss({
    @required this.kelem,
    this.erezmet,
    this.sefat,
    @required this.lije,
  });

  @override
  _KdBossState createState() => _KdBossState();
}

class _KdBossState extends State<KdBoss> {
  @override
  Widget build(BuildContext context) {



    var kelem  = widget.kelem;
    var erezmet = widget.erezmet;
    var sefat = widget.sefat;
    dynamic lije = widget.lije;



//    dynamic a; // a widget to be assigned




    return Container(
      height: erezmet,
      width: sefat,
      color: kelem,
      child: lije,
    );

  }
}
