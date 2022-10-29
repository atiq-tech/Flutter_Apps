import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 243, 200),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 63, 247, 161),
                Color.fromARGB(255, 114, 248, 203),
                Color.fromARGB(255, 118, 241, 225),
                Color.fromARGB(255, 2, 196, 245),
                Color.fromARGB(255, 97, 210, 245),
                Color.fromARGB(255, 164, 232, 241),
              ]),
        ),
        padding: EdgeInsets.all(15.0),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Color.fromARGB(255, 241, 145, 245), width: 5.0),
            ),
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage(
                  "https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/293548141_1496767507405470_8557744850596832448_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=K9bdXHTqEhcAX_GhOAE&_nc_ht=scontent.fdac14-1.fna&oh=00_AT-asu6MXHkOcerGOPCope12UKH4pa8-CS_UALyNJsO2eA&oe=633A3320"),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Muhammad Atiqur Rahman Atiq",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            height: 1.0,
            indent: 20.0,
            thickness: 2.0,
            endIndent: 20.0,
            color: Color.fromARGB(255, 4, 138, 143),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Mobile Application Developer(Android)",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 245, 245).withOpacity(0.3),
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(30.0)),
            child: ListTile(
              // tileColor: Color.fromARGB(255, 214, 218, 207),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(100.0),
              // ),
              leading: Icon(Icons.call, size: 25.0),
              title: Text(
                "Mobile Number",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "01700525823",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.call, size: 25.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 245, 245).withOpacity(0.3),
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(30.0)),
            child: ListTile(
              //tileColor: Color.fromARGB(255, 8, 8, 8),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(100.0),
              // ),
              leading: Icon(Icons.email, size: 25.0),
              title: Text(
                "iftikarislamatiq1234@gmail.com",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "atiqurrahmanatiq.cse@gmail.com",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.call, size: 25.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Contact About Me",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 1.0,
            indent: 60.0,
            thickness: 2.0,
            endIndent: 60.0,
            color: Color.fromARGB(255, 1, 103, 109),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Color.fromARGB(255, 10, 10, 10), width: 5.0),
                ),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/ldcQMpP7OaVmglCF6kGas9cY_K0PsJzSSosx2saw9KF1m3RHaEXpH_9mwBWaYnkmctk"),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Color.fromARGB(255, 19, 19, 18), width: 5.0),
                ),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      "https://toolboxpayment.com/wp-content/uploads/2021/06/facebook-600.png"),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Color.fromARGB(255, 13, 14, 13), width: 5.0),
                ),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/ZU9cSsyIJZo6Oy7HTHiEPwZg0m2Crep-d5ZrfajqtsH-qgUXSqKpNA2FpPDTn-7qA5Q"),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Color.fromARGB(255, 15, 15, 15), width: 5.0),
                ),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/08/09/17/52/instagram-1581266_640.jpg"),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
