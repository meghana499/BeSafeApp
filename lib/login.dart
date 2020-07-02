import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
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
                      "Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
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
                              color: Color.fromRGBO(225, 95, 27, 0.3),
                              blurRadius: 20,
                              offset: Offset(0, 10))
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
                                    color: Colors.grey),
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
                                    color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(height: 40,),
                      Text("Forget Password?",style:TextStyle(color: Colors.grey),),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal:50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.orange[900],
                        ),
                        child: Center(
                          child:Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
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
                    ]),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
