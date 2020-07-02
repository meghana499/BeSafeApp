// import 'package:flutter/material.dart';
// // import 'package:smooth_star_rating/smooth_star_rating.dart'; 


// class Rating extends StatelessWidget {
// int _rating=0;
// void rate(int rating) {
//   //Other actions based on rating such as api calls.
 
//     _rating = rating;
// }
  
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("My Rating"),
//       ),
//       body: new Center(
//         child: new Container(
//           width: 500.0,
//           child: new Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
              
//               new GestureDetector(
                
//                 child: new Icon(
//                   Icons.star,
//                   color: _rating >= 1 ? Colors.orange : Colors.grey,
//                 ),
//                 onTap: () => rate(1),
//               ),
//               new GestureDetector(
//                 child: new Icon(
//                   Icons.star,
//                   color: _rating >= 2 ? Colors.orange : Colors.grey,
//                 ),
//                 onTap: () => rate(2),
//               ),
//               new GestureDetector(
//                 child: new Icon(
//                   Icons.star,
//                   color: _rating >= 3 ? Colors.orange : Colors.grey,
//                 ),
//                 onTap: () => rate(3),
//               ),
//               new GestureDetector(
//                 child: new Icon(
//                   Icons.star,
//                   color: _rating >= 4 ? Colors.orange : Colors.grey,
//                 ),
//                 onTap: () => rate(4),
//               ),
//               new GestureDetector(
//                 child: new Icon(
//                   Icons.star,
//                   color: _rating >= 5 ? Colors.orange : Colors.grey,
//                 ),
//                 onTap: () => rate(5),
//               )
//             ],
  
//           ),
  
//         ),
//       ),
//     );
      
//   }
    
//   }


// // class Rating extends StatelessWidget{
// //   get rating => null;

// //   @override
// //  Widget build (BuildContext ctxt) {
// //   return new SmoothStarRating(
// //           allowHalfRating: false,
// //           onRatingChanged: (v) {
            
// //             setState(() {});
// //                       },
// //                       starCount: 5,
// //                       rating: rating,
// //                       size: 40.0,
// //                       filledIconData: Icons.blur_off,
// //                       halfFilledIconData: Icons.blur_on,
// //                       color: Colors.green,
// //                       borderColor: Colors.green,
// //                       spacing:0.0
// //                     );
            
            
                
// //               }
            
// //               void setState(Null Function() param0) {}
  
// // }

