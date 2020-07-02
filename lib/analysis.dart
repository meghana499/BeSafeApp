import 'package:besafe_app/review.dart';
import 'package:flutter/material.dart';

class Analysis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double _rating=4.0;
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Area Analysis"),
        ),
        body: new Center(
            child: new Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.white,
          child: new Container(
            child: new Center(
              
                child: new Column(children: [
                   new Text("Average Safety Rating of the Area is $_rating", style: TextStyle(fontSize: 28 ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                   new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 1 ? Colors.orange : Colors.grey,
              ),
              
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 2 ? Colors.orange : Colors.grey,
              ),
             
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 3 ? Colors.orange : Colors.grey,
              ),
              
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 4 ? Colors.orange : Colors.grey,
              ),
             
            ),
            new GestureDetector(
              child: new Icon(
                Icons.star,
                size: 60,
                color: _rating >= 5 ? Colors.orange : Colors.grey,
              ),
              
            ),
            // new Icon(
            //   Icons.star,
            //   size: 80,

            // ),

            ButtonTheme(
              height: 60.0,
                minWidth:200.0,
                padding: EdgeInsets.all(3),
                
                
              child:RaisedButton(
                
                child: Text("Add a Review"),
                
                color: Colors.redAccent,
                textColor: Colors.white,
                

                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => Review(),
                    ),
                  );
                },
              ),
            ),
              ButtonTheme(
                height: 60.0,
                minWidth:200.0,
                padding: EdgeInsets.all(3),
                

              child:RaisedButton(
                child: Text("See all Reviews"),
                color: Colors.white,
                textColor: Colors.redAccent,
                onPressed: () {},
                //Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Review(),
              ),
              ),
            ])),
          ),
        )));
  }
}
