import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyRegistationPage extends StatefulWidget {
  const MyRegistationPage({super.key});

  @override
  State<MyRegistationPage> createState() => _MyRegistationPageState();
}

class _MyRegistationPageState extends State<MyRegistationPage> {
  TextEditingController _regNameController = TextEditingController();
  TextEditingController _regFeeController = TextEditingController();

  XFile? _cameraImage;

  takeshotPicture() async {
    final ImagePicker _picker = ImagePicker();
    _cameraImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Color(0xff7c94b6),
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25.0), right: Radius.circular(25.0)),
      ),
      child: Column(
        children: [
          const Text(
            "Registation Form",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w900,
                fontSize: 30.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: TextField(
              controller: _regNameController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromARGB(255, 243, 8, 192)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                  ),
                  hintText: "Enter your registation name"),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: TextField(
              controller: _regFeeController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromARGB(255, 245, 6, 213)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromARGB(255, 16, 4, 190)),
                  ),
                  hintText: "Enter your registation fee"),
            ),
          ),
          Expanded(
            child: Container(
                child: _cameraImage == null
                    ? IconButton(
                        onPressed: () {
                          takeshotPicture();
                        },
                        icon: Icon(
                          Icons.photo,
                          size: 100.0,
                        ),
                      )
                    : Image.file(File(_cameraImage!.path))),
          ),
        ],
      ),
    );
  }
}
