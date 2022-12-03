import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_panel/screens/splash_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key});

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  TextEditingController _addcoursename = TextEditingController();
  TextEditingController _addcoursefee = TextEditingController();
  XFile? _courseImage;
  String? _imgUrl;
  chooseImageFromCG() async {
    ImagePicker _picker = ImagePicker();
    _courseImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  sendData() async {
    File _imageFile = File(_courseImage!.path);
    FirebaseStorage _storage = FirebaseStorage.instance;
    UploadTask _uploadTask =
        _storage.ref('courses').child(_courseImage!.name).putFile(_imageFile);
    TaskSnapshot _snapshot = await _uploadTask;
    _imgUrl = await _snapshot.ref.getDownloadURL();
    CollectionReference _course =
        await FirebaseFirestore.instance.collection('courses');
    _course.add(({
      '_courseName': _addcoursename.text,
      '_courseFee': _addcoursefee.text,
      'img': _imgUrl
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      padding: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 30),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 175, 219, 245),
        borderRadius: BorderRadius.horizontal(
            right: Radius.circular(35), left: Radius.circular(35)),
      ),
      child: Column(
        children: [
          TextField(
            controller: _addcoursename,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                labelText: "Add Course Name",
                labelStyle: GoogleFonts.lobster(
                    fontSize: 20,
                    color: Color.fromARGB(255, 29, 29, 31),
                    fontWeight: FontWeight.w700),
                hintText: 'Enter your add course name',
                hintStyle: GoogleFonts.lobster(
                    fontSize: 18,
                    color: Color.fromARGB(255, 29, 29, 31),
                    fontWeight: FontWeight.w700),
                prefixIcon: Icon(Icons.person)),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            controller: _addcoursefee,
            decoration: InputDecoration(
                hintText: 'Enter your add course fee',
                hintStyle: GoogleFonts.lobster(
                    fontSize: 18,
                    color: Color.fromARGB(255, 29, 29, 31),
                    fontWeight: FontWeight.w700),
                labelText: "Add Course Fee",
                labelStyle: GoogleFonts.lobster(
                    fontSize: 20,
                    color: Color.fromARGB(255, 29, 29, 31),
                    fontWeight: FontWeight.w700),
                prefixIcon: Icon(Icons.attach_money),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35))),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: _courseImage == null
                  ? IconButton(
                      icon: Icon(
                        Icons.camera,
                        size: 50,
                      ),
                      onPressed: () {
                        chooseImageFromCG();
                      },
                    )
                  : Image.file(File(_courseImage!.path))),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 172, 213, 240),
                side: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                )),
            onPressed: () {
              sendData();
              setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              });
            },
            child: Text(
              'Add Course',
              style: GoogleFonts.lobster(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 29, 28, 32),
              ),
            ),
          )
        ],
      ),
    );
  }
}
