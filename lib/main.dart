import 'package:call_app/call_app.dart';
import 'package:call_app/data_time.dart';
import 'package:call_app/drawer.dart';
import 'package:call_app/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.grey,
          body: Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(

              children: [
                SizedBox(height: 80,),
                ElevatedButton(
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CallApp()));
                },

                    child: Text("Call App",style:LatoItalic),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DateandTime()));
                },

                    child: Text("Date and Time",style: LatoBlack)),
                SizedBox(height: 50,),
                ElevatedButton(
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Drawerr()));
                },
                    child: Text("Drawer",style: LatoBold)),
              ],
            ),
          ),
        )
    );
  }
}
