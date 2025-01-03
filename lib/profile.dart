import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 100,
            backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'),
          ),
          Text(FirebaseAuth.instance.currentUser?.email??"name",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
          Text('FLUTTER DEVELOPER'),
          Divider(
            height: 10,
            color: Colors.black,
            indent: 100,
            endIndent: 100,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 5),
            // margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Row(children: [
              Icon(Icons.phone, color: Colors.amber),
              SizedBox(
                width: 10,
              ),
              Text(
                '+91 9876543210',
                style: TextStyle(color: Colors.black),
              ),
            ]),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 15),
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Row(children: [
              Icon(Icons.email, color: Colors.amber),
              SizedBox(
                width: 10,
              ),
              Text(
                'Sandrasunil@gmail.com',
                style: TextStyle(color: Colors.black),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
