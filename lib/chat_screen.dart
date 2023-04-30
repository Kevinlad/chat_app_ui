import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Row(children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://i0.wp.com/alleducationresult.com/wp-content/uploads/2023/03/sdfds.jpeg?resize=780%2C470&quality=100&ssl=1'),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Kevin Lad',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.green[400],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 80,
              ),
              Icon(
                Icons.missed_video_call_outlined,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.phone)
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Color(0xFFE1E1E2), boxShadow: []),
                    child: Text(
                      "Hello , Good Morning",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Text('7:45 am'),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 140),
                child: ClipPath(
                  clipper: LowerNipMessageClipper(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Color(0xFFE1E1E2), boxShadow: []),
                    child: Text(
                      "Good Morning....",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Text('8:00 am'),
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Color(0xFFE1E1E2), boxShadow: []),
                    child: Text(
                      "Today is important meeting about project.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Text('8:03 am'),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 150),
                child: ClipPath(
                  clipper: LowerNipMessageClipper(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Color(0xFFE1E1E2), boxShadow: []),
                    child: Text(
                      "ohh yaah.. At what time.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Text('8:08 am'),
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Color(0xFFE1E1E2), boxShadow: []),
                    child: Text(
                      "At 11:00 clock ,i will share the link .  Please be on time it's an important meeting  ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Text('8:16 am'),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 150),
                child: ClipPath(
                  clipper: LowerNipMessageClipper(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Text(
                      "I will be on time. Don't forget to send the link.  ok!.. Thanks ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 10,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 50, top: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      // color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.camera_alt,
                      // color: Colors.white,
                    ),
                    hintText: 'Type here.....',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
