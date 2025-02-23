import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

dynamic formatMessages(List<MessageStruct> messages) {
  // Initialize a list to hold the formatted messages
  List<Map<String, dynamic>> formattedMessages = [];

  // Add non-blank messages to the list, mapping 'author' to 'role' field and 'message' to 'content' field
  formattedMessages.addAll(messages.where((message) {
    // Remove messages where the role is 'model' and the text is empty or only whitespace
    return !(message.role == 'model' && (message.text?.trim().isEmpty ?? true));
  }).map((message) {
    return {
      'role': message.role,
      'parts': [
        {
          'text': message.text,
        }
      ],
    };
  }).toList());

  return formattedMessages;
}
