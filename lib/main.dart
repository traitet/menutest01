//============================================================================
// 1) IMPORT
//============================================================================
import 'package:flutter/material.dart';
import 'package:menutest01/Widgets/DashboardMenu.dart';
import 'package:menutest01/forgotPassword.dart';
//import 'package:menutest01/mainmenu.dart';
import 'package:menutest01/signup.dart';
import 'package:menutest01/CustomIcons.dart';
import 'package:menutest01/Widgets/SocialIcon.dart';


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
      title: 'Inno WFH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Inno Work From Home'),
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
  int _counter = 2020;
  //============================================================================
  // FUNTION
  //============================================================================
  void _incrementCounter() {setState(() {
      _counter++;
    });
  }
  //============================================================================
  // CREATE WIDGET (UI)
  //============================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============================================================================
      // 1) APP BAR
      //============================================================================        
      //appBar: AppBar(
        //title: Text(widget.title),
      //),
      //============================================================================
      // 2) BODY
      //============================================================================        
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        //==============================================
        // CONTAINER
        //==============================================            
        Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/login_bg.jpg')
                    )
               ),
              ),     
        //==============================================
        // PADDING ALL
        //============================================== 
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            //children: <Widget>[]                
            //============================================================================
            // 3) CHILD: COLUMN
            //============================================================================         
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            //======================================================================
            // 1) LABEL
            //======================================================================  
            Text('i-SEE',style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),),                         
            //======================================================================
            // 2) TEST (COUNTER)
            //======================================================================
            Text('$_counter',style: Theme.of(context).textTheme.headline4,),
            //======================================================================
            // 3) TEXT USER
            //======================================================================
            TextFormField(decoration: InputDecoration(labelText: 'E-mail', prefixIcon: Icon(Icons.email)),),
            //======================================================================
            // 4) TEXT PASSWORD
            //======================================================================
            TextFormField(decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.vpn_key)),),
            //======================================================================
            // 5) TEXT COMPANY
            //======================================================================
            TextFormField(decoration: InputDecoration(labelText: 'Company', prefixIcon: Icon(Icons.home)),),   
            //======================================================================
            // 6) BUTTON LOGIN
            //======================================================================
            SizedBox(height: 10.0,),  
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardMenu()),);}, 
            color: Colors.blue, 
            child: Text('CLICK TO LOGIN',style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.normal),), ),            
            //======================================================================
            // 7) TEXT SOCIAL NETWORK LOGIN
            //======================================================================
            SizedBox(height: 20.0,),            
            Text('Social Network Login',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),   
            SizedBox(height: 10.0,),      
            //======================================================================
            // 8) IMAGE BUTTON: LOGIN BY SOCIAL NETWORK
            //======================================================================
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(colors:[Color(0xFF102397),Color(0xFF187adf),Color(0xFF00eaf8),],icondata: CustomIcons.facebook),
                  SocialIcon(colors:[Color(0xFFff4f38),Color(0xFFff355d)],icondata: CustomIcons.googlePlus),
                  SocialIcon(colors:[Color(0xFF17ead9),Color(0xFF6078ea)],icondata: CustomIcons.twitter),    
                ],
              ),
            //======================================================================
            // 9) SIGN-UP, FORGOT PASSWORD
            //======================================================================
            SizedBox(height: 10.0,),     
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MySignupPage()),);},color: Colors.blue[100], child: Text('Register New Account',style: TextStyle(fontSize: 15.0, color: Colors.black38, fontWeight: FontWeight.normal),),),
              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyForgotPasswordPage()),);},color: Colors.blue[100], child: Text('Forgot Password',style: TextStyle(fontSize: 15.0, color: Colors.black38, fontWeight: FontWeight.normal),),),                
              ],
            ),
            //======================================================================
            // 10) SPARED
            //======================================================================
            //RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardMenu()),);},child: Text('Dashboard'),),
          ],
          ),

      ),
         ],
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
