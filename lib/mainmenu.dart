//============================================================================
// 1) IMPORT
//============================================================================
import 'package:flutter/material.dart';
import 'package:menutest01/form.dart';
import 'package:menutest01/report.dart';
import 'package:menutest01/search.dart';

import 'Widgets/NavDrawer.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class MyMainMenuPage extends StatefulWidget {
  @override
  _MyMainMenuPageState createState() => _MyMainMenuPageState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _MyMainMenuPageState extends State<MyMainMenuPage> {
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){
      return Scaffold(
        drawer: NavDrawer(),
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Main Menu"),),
        //===================================================
        // 3) BODY
        //===================================================              
        body: Center(
          //=================================================
          // 4) CHILD: COLUMN
          //=================================================   
          child: Column(    
            //===============================================
            // 5) CHILDREN:<WIDGET>[],
            //===============================================                       
            children:<Widget>[
              RaisedButton(onPressed:() {},child: Text('Go Back'), ),
              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyFormPage()),);},child: Text('Form'),),
              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyReportPage()),);},child: Text('Report'),),
              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MySearchPage()),);},child: Text('Search'),),             
            ],          
          ),
        ),
      );
    } //END WIDGET
}

