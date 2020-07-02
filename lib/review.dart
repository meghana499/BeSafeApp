import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  _GiveReview createState() => _GiveReview();
}

class _GiveReview extends State<Review> {
  int _rating=0;
  void rate(int rating) {
    setState(() {
      _rating=rating;
    });
    
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Add your Review"),
        ),
        body: new Container(
          child: new Column(children: <Widget>[
            Text("Give your Rating",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            new Row(

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
          ]),         
            TextFormField(
              decoration: InputDecoration(labelText: 'Write your review'),
            ),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Describe your experience here',),
            ),
            ButtonTheme(
              minWidth:200.0,
              height:60,

            child:RaisedButton(
              
              child: Text('Submit Review'),
              
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => Review(),
                  ),
                );
              },
            ),
            ),
          ])));
        
  }
}
