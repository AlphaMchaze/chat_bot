import 'package:flutter/material.dart';


InputDecoration textFieldDecoration(BuildContext context) {
  return InputDecoration(
    contentPadding: const EdgeInsets.all(15),
    hintText: 'Tell me what\'s on your mind',
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        )
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.secondary,
      ),
    ),
  );
}
