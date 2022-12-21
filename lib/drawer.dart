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
  int _pageIndex = 1;
  late List<Widget> _screenList;
  GlobalKey<ScaffoldMessengerState> _scaffoldkey = GlobalKey();


  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 2);
    _screenList = [
      DateandTime(),
      Gallery(),
      Profile(),
      CallApp(),

    ];
  }

  _setPage(int index) {
    setState(() {
      _pageController.jumpToPage(index);
      _pageIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_pageIndex != 1) {
          _setPage(1);
          return false;
        } else {
          return true;
        }
      },
      child: SafeArea(
        key: _scaffoldkey,

        child: Scaffold(
          bottomNavigationBar: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Row(
              children: [
                BottomNavigationBarItem(icon: Icons.timelapse,
                    isselect: _pageIndex == 0,
                    onTap: () => _setPage(0)),
                BottomNavigationBarItem(icon: Icons.browse_gallery,
                    isselect: _pageIndex == 1,
                    onTap: () => _setPage(1)),
                BottomNavigationBarItem(icon: Icons.person_pin_circle_rounded,
                    isselect: _pageIndex == 2,
                    onTap: () => _setPage(2)),
                BottomNavigationBarItem(icon: Icons.call,
                    isselect: _pageIndex == 3,
                    onTap: () => _setPage(3)),
              ],
            ),
          ),
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text("Drawer and BottomNavigationbar"),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: PageView.builder(
              controller: _pageController,
              physics: ScrollPhysics(),
              itemCount: _screenList.length,
              itemBuilder: (context, index) {
                return _screenList[index];
              }),
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
                      Text("Shek Farid", style: latoBlackItalic),
                      Text("sfurobin94@gmail.com", style: latoBlackItalic)
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                    title: Text("Profile", style: latoBlackItalic,),
                    leading: IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => Profile()));
                    },
                      icon: Icon(Icons.person_rounded),)
                ),

                ListTile(
                  title: Text("Contacts", style: latoBlackItalic,),
                  leading: IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => CallApp()));
                  },
                    icon: Icon(Icons.call),),
                ),

                ListTile(
                  title: Text("Date and Time", style: latoBlackItalic,),
                  leading: IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => DateandTime()));
                  },
                    icon: Icon(Icons.date_range),),
                ),

                ListTile(
                  title: Text("Gallery", style: latoBlackItalic,),
                  leading: IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => Gallery()));
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

class BottomNavigationBarItem extends StatelessWidget {
  final icon;
  final bool isselect;
  late Function() onTap;
  BottomNavigationBarItem({Key? key, this.icon, required this.isselect,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell (
            onTap:() {
            onTap();
        },
          child:  Icon(icon),
        )
    );
  }
}
