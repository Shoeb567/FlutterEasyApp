import 'package:flutter/material.dart';
import  './ad_screens/signin.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:ThemeData(
      primarySwatch: Colors.deepOrange
    )
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Center(
              child: Text('LogIn Page'),
          ),


    ),
      body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 0,top: 50),

            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                    Text('Hello People',style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.green,
            ),),  SizedBox(height: 30),
                Text('LogIn Page',style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,

                  color: Colors.green,
                ),),SizedBox(height: 25),
                Image1(),
                SizedBox(height: 35),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //labelText: 'Default TextField',

                      hintText: 'Username'
                  )),
                SizedBox(height: 25),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Default TextField',

                        hintText: 'Password'
                    )),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Default TextField',

                        hintText: 'Conform Password'
                    )),
                SizedBox(height: 25),
                SubmitButton(),

              ],
            ),
//            child:


          )
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.arrow_forward),
          onPressed: (){
            navigateToSubPage(context);
    },
      )
    );
  }
}
class Image1 extends StatelessWidget {
      @override
      Widget build(BuildContext context) {

      AssetImage assetImage= AssetImage('images/flutter.png');
      Image image = Image(image:assetImage,width: 270.0,height: 230.0);
      return Container(child:image);

  }
  
}
class SubmitButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Container(
        width:200.0,
        height:50.0,
        child: RaisedButton(
          color:Colors.green,

          child: Text('LogIn',style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          onPressed: (){},
        ),
      );
  }
  
}

Future navigateToSubPage(context)  {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
}

