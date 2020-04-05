//===========================================================
// 1) IMPORT
//===========================================================
import 'package:flutter/material.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class MyForgotPasswordPage extends StatefulWidget {
  @override
  _MyForgotPasswordPageState createState() => _MyForgotPasswordPageState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _MyForgotPasswordPageState extends State<MyForgotPasswordPage> {
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){
      return Scaffold(
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Forgot Password"),),
        //===================================================
        // 3) BODY
        //===================================================              
        body: Center(
          //=================================================
          // 4) CHILD: BUTTON
          //=================================================               
          child: RaisedButton(onPressed:() {},child: Text('Go Back'), ),
        ),
      );
    } //END WIDGET

  } //END CLASS

