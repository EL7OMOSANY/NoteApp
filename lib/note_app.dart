import 'package:flutter/material.dart';
import 'package:note_book_app/widgets/add_new_note_button.dart';
import 'package:note_book_app/widgets/custom_app_bar.dart';
import 'package:note_book_app/widgets/list_of_notes.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(title: 'Notes', icon: Icons.search,),
        body: ListOfNotes(),
        floatingActionButton: AddNewNoteButton(),
      ),
    );
  }
}
