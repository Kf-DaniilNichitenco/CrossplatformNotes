import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NotePage.dart';

class ListCard extends StatelessWidget {
  ListCard(
      [this.cardColor = Colors.lightBlue,
        this.noteTitle = "Note",
        this.cardContent = const Text("Note", textAlign: TextAlign.center)]);
  final Color cardColor;
  final Widget cardContent;
  final String noteTitle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.35;

    return Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            offset: Offset(8, 8),
          )
        ]
      ),
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            bottom: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.width * 0.015,
            right: MediaQuery.of(context).size.width * 0.024),
        child: FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(noteTitle)));
            },
            color: cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              //side: BorderSide(color: Colors.black) //Контур
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 0),
              constraints: BoxConstraints(
                  minHeight: 100, minWidth: width, maxWidth: width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    noteTitle,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: cardContent,
                    margin: EdgeInsets.only(top: 5),
                  )
                ],
              ),
            )));
  }
}