
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.text,
    required this.isFromUser,
  });

  final String text;
  final bool isFromUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 21,
            ),
            margin: const EdgeInsets.only(bottom: 10),
            constraints: const BoxConstraints(maxWidth: 550),
            decoration: BoxDecoration(
              color: isFromUser
              ?Theme.of(context).colorScheme.primary
              :Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                  MarkdownBody(data: text),
              ],
            ),
          ),
          )
      ],
    );
  }
}
