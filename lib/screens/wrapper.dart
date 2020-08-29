import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'authenticate/authenticate.dart';

import 'package:flutter/material.dart';
import 'package:besafe_app/models/user.dart';

class Wrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    final user = Provider.of<User>(context);
    print(user);

    return Authenticate();

  }
}