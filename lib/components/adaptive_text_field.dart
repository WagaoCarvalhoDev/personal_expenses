import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTextField extends StatelessWidget {
  const AdaptiveTextField({
    super.key,
    required this.autofocus,
    this.keyboardType,
    required this.controller,
    required this.label,
    required this.onSubmitted,
  });

  final bool autofocus;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String label;
  final void Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
            autofocus: autofocus,
            keyboardType: keyboardType,
            controller: controller,
            onSubmitted: onSubmitted,
            placeholder: label,
          )
        : TextField(
            autofocus: autofocus,
            keyboardType: keyboardType,
            controller: controller,
            decoration: InputDecoration(labelText: label),
            onSubmitted: onSubmitted,
          );
  }
}
