import 'package:flutter/material.dart';
import 'package:eticket/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              RaisedButton(
                  child: Text("Sign Up"),
                  onPressed: () async {
                    SignInSignUpResult result = await AuthServices.signUp(
                        "wdimas452@gmail.com",
                        "SMKMQ",
                        "Dimas",
                        ["Action", "Cartoon", "Horror"],
                        "Indonesia");

                    if (result.user == null) {
                      print(result.massage);
                    } else {
                      print(result.user.toString());
                    }
                  })
            ]))));
  }
}
