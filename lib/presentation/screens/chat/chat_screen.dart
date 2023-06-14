import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_mesagge_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

import '../../widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ryan Gosling'),
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.seadn.io/gae/mekZSuvuGEUT2QCWTKpEZzunUFEhUEG88Ccpkyoxtrgjpo6MH9w2iBwkkQTqiSTAcSq5P2unWUTNo1pzzKSqLz_joL6-TGIvCgYC3OE?auto=format&dpr=1&w=1000')),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return (index % 2 == 0) ? HerMessageBubble() : MyMesaggeBubble();
            },
          )),
          const MessageFieldBox(),
        ]),
      ),
    );
  }
}
