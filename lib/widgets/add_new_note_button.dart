import 'package:flutter/material.dart';
import 'package:note_book_app/widgets/add_new_note_finction.dart';

class AddNewNoteButton extends StatelessWidget {
  const AddNewNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white.withOpacity(.8),
      foregroundColor: Colors.blueGrey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      onPressed: () {
        addNewNote(context);
      },
      child: const Icon(Icons.add, size: 30),
    );
  }
}
