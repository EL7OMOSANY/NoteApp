import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_book_app/note_app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes');
  runApp(const NoteApp());
}
