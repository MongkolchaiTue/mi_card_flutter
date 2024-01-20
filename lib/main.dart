import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 55.0,
                backgroundImage: AssetImage('images/i_am_rich_app_icon.png'),
              ),
              Text(
                'สวัสดี, Angela Yu',
                style: TextStyle(
                  fontFamily: 'NotoSansThai',
                  fontSize: 20.0,
                  color: Colors.blue.shade100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child:  Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 40.0,
                    color: Colors.teal.shade600,
                  ),
                  title: Text(
                    'Tel.+66 123 456 789',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'angela@email.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Pacifico'
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
