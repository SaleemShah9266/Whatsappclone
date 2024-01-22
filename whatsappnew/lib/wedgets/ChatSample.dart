import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 216, 216),
              ),
              child: Text(
                "Hi, Saleem, How Are you doing today",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 169, 244, 169),
              ),
              child: Text(
                "Hi, GMK, I good, what about you, where are you, ",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
