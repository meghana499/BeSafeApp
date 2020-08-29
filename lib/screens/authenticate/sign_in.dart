import 'package:besafe_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:besafe_app/main.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth=AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: deviceSize.height,
        // width: deviceSize.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.purple[400],
            Colors.purple[300],
            Colors.purple[200]
          ])),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    RaisedButton(child: Text("Skip Login"),
                    onPressed: () async{
                      dynamic result =await _auth.signInAnon();
                          if(result==null){
                            print("error signing in");
                          }
                          else{
                            print("signed in");
                            print(result.uid);
                          }

                      },)
                  ],
                  
                ),
              ),
              Expanded(
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  child: Padding(
                    
                    padding: EdgeInsets.all(20),
                    
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(153, 50, 204, 0.3),
                              blurRadius: 0,
                              offset: Offset(0, 1))
                        ]),
                        child: Column(children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(20),
                            
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(
                                    color: Colors.black54),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.black54),
                                  border: InputBorder.none),
                            ),
                          )
                        ]
                  ),
                      ),
                      SizedBox(height: 40,),
                      Text("Forget Password?",style:TextStyle(color: Colors.grey),),
                      SizedBox(height: 40,),
                      Container(
                        
                        
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal:50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.purple[600],
                        ),
                        child: Center(

                        child: RaisedButton(
                          child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                        

                        onPressed: () async {
                          dynamic result =await _auth.signInAnon();
                          if(result==null){
                            print("error signing in");
                          }
                          else{
                            print("signed in");
                            print(result.uid);                           
                             Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Homescreen()),
                             );
                             }
                          }
,
                        ),
                        //   onPressed: ()
                        //    {
                        //      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Homescreen()),);},
                        // ),
                        
                        ),
                        ),
                                                                                                
                      SizedBox(height: 30,),
                      Text("Continue with Social Media",style: TextStyle(color: Colors.grey),),
                                          
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          
                          Expanded(
                            child: Container(
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(50),
                                color: Colors.red

                              ),
                              child: Center(
                          child:Text("Google",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                        ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(50),
                                color: Colors.black
                              ),
                              child: Center(
                                child: Text("Github",style: TextStyle(color:Colors.white),),
                              ),

                            ),
                          ),
                        ]
                      )
                    ]
                    )
                    
                  ),
                ),
              )
            ],
            
          )),
    );
  }
}