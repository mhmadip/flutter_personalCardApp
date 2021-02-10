import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'mhmadip@gmail.com',
    queryParameters: {'subject': 'Personal_mail!'});

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/picture.jpg"
                    ""),
                radius: 50.0,
              ),
              Text(
                "Mohammad Salim",
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                color: Colors.white,
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: GestureDetector(
                      onTap: () => launch('tel: 07508608162'),
                      child: Text(
                        "07508608162",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                color: Colors.white,
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: GestureDetector(
                      onTap: () => launch(_emailLaunchUri.toString()),
                      child: Text(
                        "mhmadip@gmail.com",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
