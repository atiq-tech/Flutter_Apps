import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_panel/screens/splash_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UpdateCourse extends StatefulWidget {
  String documentId;
  String courseName;
  String courseFee;
  String img;
  UpdateCourse(this.documentId, this.courseName, this.courseFee, this.img);

  @override
  State<UpdateCourse> createState() => _UpdateCourseState();
}

class _UpdateCourseState extends State<UpdateCourse> {
  TextEditingController _addcoursename = TextEditingController();
  TextEditingController _addcoursefee = TextEditingController();
  XFile? _courseImage;
  String? _imgUrl;
  chooseImageFromCG() async {
    ImagePicker _picker = ImagePicker();
    _courseImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  updateData(documentId) async {
    if (_courseImage == null) {
      CollectionReference _course =
          await FirebaseFirestore.instance.collection('courses');
      _course.add(({
        '_courseName': _addcoursename.text,
        '_courseFee': _addcoursefee.text,
        'img': widget.img,
      }));
    } else {
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
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addcoursename.text = widget.courseName;
    _addcoursefee.text = widget.courseFee;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      padding: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 20),
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
                labelStyle: GoogleFonts.kenia(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Color.fromARGB(255, 102, 121, 173),
                    fontWeight: FontWeight.w700),
                hintText: 'Enter your add course name',
                hintStyle: GoogleFonts.kenia(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Color.fromARGB(255, 102, 121, 173),
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
                hintStyle: GoogleFonts.kenia(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Color.fromARGB(255, 102, 121, 173),
                    fontWeight: FontWeight.w700),
                labelText: "Add Course Fee",
                labelStyle: GoogleFonts.kenia(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Color.fromARGB(255, 102, 121, 173),
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
                  ? Stack(
                      children: [
                        Image.network(
                          widget.img,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            bottom: 10,
                            left: 90,
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 193, 231, 233),
                              child: IconButton(
                                icon: Icon(
                                  Icons.camera,
                                ),
                                onPressed: () {
                                  chooseImageFromCG();
                                },
                              ),
                            ))
                      ],
                    )
                  : Image.file(File(_courseImage!.path))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 120, 103, 182),
                  side: BorderSide(
                      color: Color.fromARGB(255, 184, 181, 5), width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  )),
              onPressed: () {
                updateData(widget.documentId);
              },
              child: Text(
                'Update Course',
                style: GoogleFonts.kenia(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Color.fromARGB(255, 102, 121, 173),
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
    );
  }
}
