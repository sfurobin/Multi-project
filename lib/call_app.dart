
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart' as launchUrl;

import 'contacts.dart';

class CallApp extends StatefulWidget {
  const CallApp({Key? key}) : super(key: key);

  @override
  _CallAppState createState() => _CallAppState();
}

class _CallAppState extends State<CallApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        centerTitle: true,
        title: Text("Phone Contacts"),
        backgroundColor: Colors.lightGreen,
      ),*/

      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: ListView.builder(
          itemCount: contactcall.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person_sharp),
              title: Text(contactcall[index].name),
              subtitle: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 75),
                    child: Text(contactcall[index].phone),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(contactcall[index].email),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          FlutterPhoneDirectCaller.callNumber(contactcall[index].phone);
                        });
                      },
                      icon: Icon(Icons.call)),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          _makesms(contactcall[index].phone);
                        });
                      },
                      icon: Icon(Icons.message)),
                  IconButton(
                      onPressed: (){
                        _makeemail(contactcall[index].email);
                      },
                      icon: Icon(Icons.mail_outline_sharp)),
                ],
              ),
            );
          }),
      ),
    );
  }
}
 //FlutterPhoneDirectCaller.callNumber(contactcall[index].phone);
// (ei line ta hoscche call er jonno.etar jonno ekta pack downlode korte hobe.


//.................sms er funcation....................
Future<void> _makesms (String messags ) async{
  final Uri urlluncher = Uri(
    scheme: "sms",
    path: "+88${messags}",
  );
 await launchUrl.launchUrl(urlluncher);
}

//.................email er funcation....................

Future<void> _makeemail (String mail ) async{
  final Uri urlluncher = Uri(
    scheme: "mailto",
    path: "${mail}",
    query: encoderQueryParameters(<String, String>{
      'subject': "Example Subject & Symbol are allowed",

    }),
  );
 await launchUrl.launchUrl(urlluncher);
}
String? encoderQueryParameters(Map<String,String>params){
  return params.entries
      .map((MapEntry<String,String> e)=>
  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}


