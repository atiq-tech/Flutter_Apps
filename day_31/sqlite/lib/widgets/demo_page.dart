import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:sqlite/db_helper/mydb_helper.dart';
import 'package:sqlite/model/contact.dart';
import 'package:sqlite/widgets/new_contact.dart';

class Demo extends StatefulWidget {
  Contact? contact;
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 157, 227, 248),
        title: Text(
          'Contact List',
          style: TextStyle(
              color: Color.fromARGB(255, 3, 3, 3),
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: MyDbHelper.readContact(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Column(
                  children: [CircularProgressIndicator(), Text('Loading ...')],
                ),
              );
            }

            return snapshot.data!.isEmpty
                ? Center(
                    child: Text(
                      'Here, have no any data',
                      style: TextStyle(
                          color: Color.fromARGB(255, 6, 9, 209),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  )
                : ListView(
                    children: snapshot.data!
                        .map((e) => Center(
                              child: ListTile(
                                leading: Icon(
                                  Icons.person,
                                  size: 25,
                                ),
                                title: Text(
                                  e.name,
                                ),
                                subtitle: Text(
                                  e.phone,
                                ),
                                trailing: IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                    ),
                                    onPressed: () async {
                                      await MyDbHelper.deleteContact(e.id!);
                                      setState(() {});
                                    }),
                              ),
                            ))
                        .toList());
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_c) => NewContact()));

          setState(() {});
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
