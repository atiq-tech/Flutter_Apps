import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(title:Text("Drawer"),),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/maxresdefault.jpg",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      ),

                      Positioned(
                      top: 30,
                      right: 10,
                        child: CircleAvatar(
                          radius: 36,
                          backgroundImage: AssetImage(
                            "assets/I_am_Atiq.jpg",                           
                          ),
                        ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 70,
                        child: Text("Iftikar Islam Atiq",
                        style: TextStyle(color: Colors.black,fontFamily: "Lobster",fontSize: 20),),
                        ),
                         Positioned(
                          right: 10,
                          bottom: 40,
                        child: Text("Student of Dhaka International University",
                        style: TextStyle(color: Colors.yellow,fontFamily: "Lobster",fontSize: 15),
                         ),
                        ),
                  ],
                  ),
              ),
              ListTile(
              tileColor: Colors.blue,
                onTap:(){},
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/Atiq.jpg"),
                  ),
                   title: Text("This is title"),
               subtitle: Text("This is sub-title"),
               trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
              tileColor: Colors.red,
                onTap:(){},
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/Atiq1.jpg"),
                  ),
                   title: Text("This is title"),
               subtitle: Text("This is sub-title"),
               trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
              tileColor: Colors.pink,
                onTap:(){},
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/Sobuj.jpg"),
                  ),
                   title: Text("This is title"),
               subtitle: Text("This is sub-title"),
               trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
              tileColor: Colors.green,
                onTap:(){},
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/I_am_Atiq.jpg"),
                  ),
                   title: Text("This is title"),
               subtitle: Text("This is sub-title"),
               trailing: Icon(Icons.arrow_forward_ios),
                  ),
            ],
          ),
        ),
        body:Padding(
      
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
    
                  "assets/I_am_Atiq.jpg",
                  
                  ),
              ),
              Text("Muhammad Atiqur Rahman Atiq",
              style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Lobster",
              fontWeight: FontWeight.w400,
               ),
              ),
              Text("FLUTTER DEVELOPER",
              style: TextStyle(
              color: Colors.yellow,
              fontSize: 16,
              fontFamily: "Lobster",
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0
               ),
              ),
              Divider(
                color:Colors.white.withOpacity(0.5),
                thickness: 1,
                indent: 200,
                endIndent: 200,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  ),
                child: Row(
                  children: [
                    Icon(Icons.phone,color: Colors.green,
                    size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("+880-1700525823",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      letterSpacing: 2.0,
                      fontFamily: "Roboto",
                      ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
               Container(
                  padding: EdgeInsets.only(left: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                  borderRadius: BorderRadius.circular(8),
                  ),
                child: Row(
                  children: [
                    Icon(Icons.email,color: Colors.indigo,
                    size: 30,),
                    SizedBox(
                      width: 20,
                    ),
                    Text("iftikarislamatiq1234@gmail.com",
                    style: TextStyle(
                      letterSpacing:2.0,
                      fontSize: 20,
                      color: Colors.green,
                      fontFamily:"Lobster",
                    ),
                    ),
                    
                  ],
                ),
              ),
            ],
              ),
        ) ,
          ),
       ),
    );
}

