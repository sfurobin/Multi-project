import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      //SizedBox(width: 190,),
                      Text("Profile",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      //SizedBox(width: 190,),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: Image.network(
                          "https://media-exp1.licdn.com/dms/image/C5603AQESCxB3MmNZvw/profile-displayphoto-shrink_200_200/0/1659156651726?e=1675296000&v=beta&t=oyj_thKYa4kPOlIcTpycAtzeBbETjFBz4Qh7rXZCFis",
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Shek Farid Uddin Robin",
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Junior Software Developer (Flutter)",
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "1000   Followers",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: Colors.grey,
                      ),
                      Text(
                        "1200   Following",
                        style: TextStyle(fontSize: 13, color: Colors.white),

                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //SizedBox(height: 10,),
                          Icon(
                            Icons.mail,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "sfurobin94@gmail.com",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,

                ),
              ),
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //SizedBox(height: 10,),
                          Icon(
                            Icons.mobile_friendly_outlined,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mobile",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "01747606057",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,

                ),
              ),
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //SizedBox(height: 10,),
                          Icon(
                            Icons.facebook,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Facebook",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "http//www.facebook.com/ShekFarid.Uddin.Robin",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,

                ),
              ),
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icon/twitter.png",
                            height: 20,width: 20,),

                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Twitter",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "shek farid",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,

                ),
              ),
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icon/insta.png",
                            height: 20,width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Instagram",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "__r_ob_i_n_",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
