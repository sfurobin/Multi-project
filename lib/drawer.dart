import 'package:call_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'call_app.dart';
import 'data_time.dart';
import 'gallery.dart';
import 'profile.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  _DrawerrState createState() => _DrawerrState();
}
class _DrawerrState extends State<Drawerr> {

  late PageController _pageController;
  int _pageIndex =1;
  late List<Widget> _screenList;
  GlobalKey<ScaffoldMessengerState> _scaffoldkey=GlobalKey();

  @override
  void initState(){
    super.initState();
    _pageController=PageController(initialPage: 3);
    _screenList = [
      DateandTime(),
      Gallery(),
      Profile(),
      CallApp(),

    ];
  }

  _setPage(int index){
    setState(() {
      _pageController.jumpToPage(index);
      _pageIndex=index;
    });
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if( _pageIndex!= 1){
          _setPage(1);
          return false;
        }else{
          return true;
        }
      },
      child: SafeArea(
        key: _scaffoldkey,

        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text("Drawer and BottomNavigationbar"),
            centerTitle: true,
           // backgroundColor: Colors.pinkAccent,
          ),
          /*body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Oi upore konay DRAWER er icon e clik koren",style: latoBlackItalic,),
                Text("Happy >3",style: LatoBold,),
              ],
            ),
          ),*/
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                   "https://media.licdn.com/dms/image/C5603AQESCxB3MmNZvw/profile-displayphoto-shrink_200_200/0/1659156651726?e=1677110400&v=beta&t=QEZ6HCB_xvoAARz4EWgbflsX1BsMzOE8ko9v_Jko8LE",
                                ),
                              ),
                              color: Colors.lime
                          ),
                        ),
                        Text("Shek Farid",style:latoBlackItalic ),
                        Text("sfurobin94@gmail.com",style: latoBlackItalic)
                      ],
                    ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                 ),
              ListTile(
                title: Text("Profile",style: latoBlackItalic,),
                leading:  IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
                   icon: Icon(Icons.person_rounded),)
               ),

                ListTile(
                    title: Text("Contacts",style: latoBlackItalic,),
                    leading:  IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CallApp()));
                    },
                      icon: Icon(Icons.call),),
                ),

                ListTile(
                  title: Text("Date and Time",style: latoBlackItalic,),
                  leading:  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DateandTime()));
                  },
                    icon: Icon(Icons.date_range),),
                ),

                ListTile(
                  title: Text("Gallery",style: latoBlackItalic,),
                  leading:  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
                  },
                    icon: Icon(Icons.browse_gallery_sharp),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
