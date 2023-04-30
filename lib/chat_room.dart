import 'package:chat_app/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/rendering/box.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  int currentTab = 0;
  final List<Widget> screens = [ChatRoom()];
  Widget currentScreen = ChatRoom();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    // controller: controller,
                    obscureText: false,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Search here',
                        hintStyle: TextStyle(color: Colors.grey[500])),
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatScreen()));
                            },
                            child: buildChat(
                                NetworkImage(
                                  'https://i.pinimg.com/736x/14/ac/cf/14accf0ae870b126b5cffdc687d805e7.jpg',
                                ),
                                "Kevin Lad",
                                'Where are you??',
                                '9:45',
                                3),
                          ),
                          buildChat(
                              NetworkImage(
                                'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?cs=srgb&dl=pexels-chloe-1043471.jpg&fm=jpg',
                              ),
                              'Rahul',
                              "kem cho bhai",
                              '10:34',
                              2),
                          buildChat(
                              NetworkImage(
                                  'https://i0.wp.com/alleducationresult.com/wp-content/uploads/2023/03/sdfds.jpeg?resize=780%2C470&quality=100&ssl=1'),
                              'Tom',
                              'Good Morning',
                              '7:12',
                              0),
                          buildChat(
                              NetworkImage(
                                  'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?cs=srgb&dl=pexels-masha-raymers-2726111.jpg&fm=jpg'),
                              'Jerry',
                              'Tommowrow is meeting ??',
                              '5:43',
                              3),
                          buildChat(
                              NetworkImage(
                                  'https://images.pexels.com/photos/3796217/pexels-photo-3796217.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              'Oliva',
                              'Hello',
                              '3:10',
                              0),
                          buildChat(
                              NetworkImage(
                                  'https://www.premiumgraduate.com.au/wp-content/uploads/2020/06/good-linkedin-profile-photo-right-expression-1000x1000.jpg'),
                              'Dev',
                              'whats up man',
                              '8:22',
                              1),
                          buildChat(
                              NetworkImage(
                                  'https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg'),
                              'Bro',
                              'hii',
                              '7:00',
                              2),
                          buildChat(
                              NetworkImage(
                                  'https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg'),
                              'Bro',
                              'hii',
                              '7:00',
                              0),
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatRoom();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatRoom();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        // Text('Chat')
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatRoom();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        // Text('call')
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatRoom();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        // Text('setting')
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChat(ImageProvider image, String name, String message,
      String time, int msgCount) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              color: Colors.white70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: image,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Column(
                                children: [
                                  Text(time),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  if (msgCount > 0)
                                    CircleAvatar(
                                      radius: 7,
                                      backgroundColor: Colors.green,
                                      child: Text(
                                        msgCount.toString(),
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.done_all, size: 15),
                              Text(message),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
