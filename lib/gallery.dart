

import 'dart:io';

import 'package:call_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  String fileName = "";
  File? file;
  final picker = ImagePicker();

  void _chooseCamera() async {
    final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
        maxHeight: 500,
        maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _chooseGallery() async {
    final pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
        maxHeight: 500,
        maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text(
          "Gallery",style: LatoBold,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),*/
      body: ListView(
         children: [
        InkWell(
          onTap: () async {
            _chooseCamera();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Center(child: Text("Capture", style: LatoBold)),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            _chooseGallery();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Center(
                    child: Text("Choose from gallery", style: LatoBlack))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        file != null
            ? Image.file(
          file!,
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        )
            : Container(),

          ]

      ),
    );
  }
}
