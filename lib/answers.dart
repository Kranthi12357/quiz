import 'package:flutter/material.dart';


class answers extends StatelessWidget{
  Function ans;
  String an;
  answers(this.ans,this.an);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        textColor: Colors.white,

        color: Colors.amberAccent,
        child: Text(an,style: TextStyle(fontSize: 20),),
        onPressed: ans,
      ),
    );
  }
}