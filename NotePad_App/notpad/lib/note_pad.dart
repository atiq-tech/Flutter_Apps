import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotePad extends StatefulWidget {
  const NotePad({super.key});

  @override
  State<NotePad> createState() => _NotePadState();
}

class _NotePadState extends State<NotePad> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Color(0xffafe5cd),
      appBar: AppBar(
        actions: [
          MaterialButton(
            onPressed: () {},
            child: Text("Save"),
          )
        ],
      ),
      body: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
    );
  }
}
