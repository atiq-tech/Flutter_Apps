import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'package:sqlite/db_helper/mydb_helper.dart';
import 'package:sqlite/model/contact.dart';

class NewContact extends StatefulWidget {
  Contact? contact;

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 247, 152, 250),
          centerTitle: true,
          title: Text(
            'Contact login',
            style: TextStyle(
                color: Color.fromARGB(255, 3, 3, 3),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          )),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
            child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  label: Text('Name'),
                  hintText: 'Please Enter your Name',
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  label: Text('Phone'),
                  hintText: 'Please Enter your Phone Number',
                  prefixIcon: Icon(Icons.call)),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
                onPressed: () async {
                  await MyDbHelper.createContact(Contact(
                    name: _nameController.text,
                    phone: _phoneController.text,
                  ));
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Text('Save Contact'))
          ],
        )),
      ),
    );
  }
}
