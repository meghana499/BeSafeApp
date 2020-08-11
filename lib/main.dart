import 'package:besafe_app/analysis.dart';
import 'package:besafe_app/services/auth.dart';
//import 'package:besafe_app/review.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import './rating.dart';
import './login.dart';
import 'screens/wrapper.dart';
import 'screens/authenticate/sign_in.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return StreamProvider.value(
      value:AuthService().user,
      child: MaterialApp(
        home: Wrapper()
        ));

  

  }
}

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("NoGhetto App-Be Safe"),
      ),
    
      body: new Center(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                    child: new Column(
                     children : [
                       new Padding(padding: EdgeInsets.only(top: 140.0)),
                       new Text('Enter the area you want to search',
                       style: new TextStyle(color: Colors.purple, fontSize: 25.0),),
                       new Padding(padding: EdgeInsets.only(top: 50.0)),
                       new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Area Name",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if(val.length==0) {
                          return "Area Name cannot be empty";
                        }else{
                          return null;
                        }
                      },
                      
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    
                    RaisedButton(child: Text('Search'),
                    color:Colors.redAccent,
                    textColor: Colors.white,
                    
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Analysis(),
                      ),
                      );
                    },)
                    
                     ]
                     
                    )
                 ),
)
            )
        )
    );
}
}
class MyHomePage extends StatefulWidget {
      MyHomePage({Key key, this.title}) : super(key: key);
      final String title;
      @override
      _MyHomePageState createState() => _MyHomePageState();
    }
    class _MyHomePageState extends State<MyHomePage> {
      TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

      @override
      Widget build(BuildContext context) {

        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );

        return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 155.0,
                    ),
                    SizedBox(height: 45.0),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }
