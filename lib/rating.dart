//rating.dart
import 'package:flutter/material.dart';


class Rating extends StatefulWidget {

  _RatingState createState() => _RatingState();
  }
  
  class _RatingState extends State<Rating>{
    int _rating=0;
    void rate(int rating) {
    setState(() { 
      _rating=rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("Give rating"),
    ),
    body: new Center(
      child: new Container(
        width: 500.0,
        height: 500.0,
        child: new Row(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 1 ? Colors.orange : Colors.grey,
              ),
              onTap: () => rate(1),
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 2 ? Colors.orange : Colors.grey,
              ),
              onTap: () => rate(2),
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 3 ? Colors.orange : Colors.grey,
              ),
              onTap: () => rate(3),
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 4 ? Colors.orange : Colors.grey,
              ),
              onTap: () => rate(4),
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 5 ? Colors.orange : Colors.grey,
              ),
              onTap: () => rate(5),
            ),
            // RaisedButton(child: Text("Write a Review"),
            // color: Colors.redAccent,
            // textColor: Colors.white,
            // onPressed: () {
            //           Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Review(),
            //           ),
            //           );
            //         },
            // )
          ],
        ),
      ),
    ));
  }
}