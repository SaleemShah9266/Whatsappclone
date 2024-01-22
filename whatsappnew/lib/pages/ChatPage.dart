import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappnew/wedgets/ChatBottomBar.dart';
import 'package:whatsappnew/wedgets/ChatSample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/profile.jpeg",
                    height: 45,
                    width: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GMk",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                      Text(
                        "online",
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(1)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 15),
              child: Icon(
                CupertinoIcons.video_camera_solid,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 15),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 15),
              child: Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 80),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 193, 133),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                      ]),
                  child: Text(
                    "Message and calls are end-t0-end encrypted, No one outside of this chat can read and listen.Tap to learn more",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),
      
    );
  }
}
