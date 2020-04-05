//============================================================================
// 1) IMPORT
//============================================================================
import 'package:flutter/material.dart';
import 'package:menutest01/forgotPassword.dart';
import 'package:menutest01/form.dart';
import 'package:menutest01/mainmenu.dart';
import 'package:menutest01/signup.dart';


//============================================================================
// 2) MAIN
//============================================================================
void main() {
  runApp(MyApp());
}

//============================================================================
// 3) MY APP
//============================================================================
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//============================================================================
// 4) MY WIDGET
//============================================================================
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


//============================================================================
// MY APP
//============================================================================
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  //============================================================================
  // FUNTION
  //============================================================================
  void _incrementCounter() {
      setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============================================================================
      // 1) APP BAR
      //============================================================================        
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //============================================================================
      // 2) BODY
      //============================================================================        
      body: Center(
      //============================================================================
      // 3) CHILD: COLUMN
      //============================================================================         
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //======================================================================
            // 1) LABEL
            //======================================================================            
            Text(
              'You have pushed the button this many times:',
            ),
            //======================================================================
            // 2) TEST (COUNTER)
            //======================================================================
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            //======================================================================
            // 3) BUTTON#1
            //=====================================================================
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MySignupPage()),);},child: Text('Sign-up'),),
            //======================================================================
            // 4) BUTTON#2
            //=====================================================================
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyMainMenuPage()),);},child: Text('Main Menu'),),
            //======================================================================
            // 5) BUTTON#3
            //=====================================================================
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyForgotPasswordPage()),);},child: Text('Forget Password'),
            ),

          ],
        ),
      ),

      //============================================================================
      // 4) FLOAT BUTTON
      //============================================================================    
      floatingActionButton: FloatingActionButton(
        //==========================================================================
        // CALL FUNCTION _INCREASECOUNTER
        //==========================================================================     
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.


    );
  }
}
