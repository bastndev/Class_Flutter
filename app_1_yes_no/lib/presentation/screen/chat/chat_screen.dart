import 'package:class_2/domain/entities/message.dart';
import 'package:class_2/presentation/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:class_2/presentation/widget/chat/her_message_bubble.dart';
import 'package:class_2/presentation/widget/chat/my_message_bubble.dart';
import 'package:class_2/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
          ),
        ),
        title: const Text('Lucia 💙'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.listMessage.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.listMessage[index];

                  return(message.fromWho == FromWho.her)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                },
              ),
            ),

            /// --- --- --- Box Message
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
