import 'package:flutter/material.dart';
import 'package:vendeur_app/texts.dart';
import 'package:vendeur_app/tools.dart';
import 'registrationPage.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Color clr = Color(0xffF7901E);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: clr,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Image.asset("lib/assets/logo.png"),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      color: Colors.black,
                      blurRadius: 5
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      texts(text: "Hello",color: blue,size: 35,fsize: FontWeight.bold,),
                      texts(text: "Login Now",color: blue,size: 20,),
                      TextField(
                        decoration: InputDecoration(
                          
                          labelText: "Email",
                          labelStyle: TextStyle(color: Color(0xffB4B4B2), fontSize: 20),
                          
                        ),
                      ),
                      SizedBox(height: 50,),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Passsword",
                          labelStyle: TextStyle(color: Color(0xffB4B4B2), fontSize: 20),
                        ),
                         obscureText: true,

                      ),  
                      SizedBox(height: 50,),
                      Container(width: 150,
                        child: FlatButton(
                    shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                    splashColor: Color(0xff0F102C),
                    color: Color(0xffF7901E),
                    onPressed: () {},
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.save_sharp),
                          texts(
                            text: "Save",
                            size: 25,
                            fsize: FontWeight.bold,
                          )
                        ],
                    ),
                  ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
