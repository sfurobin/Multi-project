import 'dart:io';
import 'package:call_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DateandTime extends StatefulWidget {
  const DateandTime({Key? key}) : super(key: key);

  @override
  _DateandTimeState createState() => _DateandTimeState();
}

class _DateandTimeState extends State<DateandTime> {
  String date = " Select Date";

  TimeOfDay selectedTime = TimeOfDay.now();

 /* String fileName = "";
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
*/
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       /* appBar: AppBar(
          title: Text(
            "Date and Time",
            style: latoBlackItalic,
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),*/
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                DateTime? dateTime = await getDate(context);
                String? day;
                String? month;
                String? year;
                dateTime!.day < 10
                    ? day = '0${dateTime.day}'
                    : day = '${dateTime.day}';
                dateTime.month < 10
                    ? month = '0${dateTime.month}'
                    : month = '${dateTime.month}';
                year = '${dateTime.year}';
                date = '$day-$month-$year';
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Center(
                      child: Text(
                    date,
                    style: latoBlackItalic,
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                _selectTime(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Center(
                      child: Text(
                    "${selectedTime.hour}:${selectedTime.minute}",
                    style: latoBlackItalic,
                  )),
                ),
              ),
            ),
          /*  InkWell(
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
                : Container(),*/
          ],
        ),
      ),
    );
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}

//......................Date and Time er jonno ................................

Future<DateTime?> getDate(BuildContext context) async {
  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2018),
    lastDate: DateTime(2040),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.blueAccent,
          ),
          dialogBackgroundColor: Colors.white,
        ),
        child: child!,
      );
    },
  );
}
