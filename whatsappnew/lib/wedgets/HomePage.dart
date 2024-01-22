import 'package:flutter/material.dart';
import 'package:whatsappnew/wedgets/CallWidget.dart';
import 'package:whatsappnew/wedgets/ChatWedget.dart';
import 'package:whatsappnew/wedgets/StatusWedget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 1),
              child: Text(
                "WhatsApp",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  right: 15,
                ),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (Selected) {
                  if ((Selected) == 4) {
                    Navigator.pushNamed(context, "SettingPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New Broadcast",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Starred Message",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Setting",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            color: Colors.green,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Container(
                  width: 25,
                  child: const Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                Container(
                  child: Tab(
                    child: Row(
                      children: [
                        Text("Chats"),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "10",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  child: const Tab(
                    child: Text("STATUS"),
                  ),
                ),
                Container(
                  width: 85,
                  child: const Tab(
                    child: Text("CALLS"),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  // camera tab 1
                  Container(color: Colors.white),
                  // tab 2 ChatWedget
                  ChatWedget(),
                  StatusWedget(),
                  CallWidget(),
                ],
              ))
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
