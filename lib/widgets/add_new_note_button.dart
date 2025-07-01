import 'package:flutter/material.dart';
import 'package:note_book_app/widgets/add_note_column_fields.dart';

class AddNewNoteButton extends StatelessWidget {
  const AddNewNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white.withOpacity(.8),
      foregroundColor: Colors.blueGrey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      onPressed: () {
        AddNewNote(context);
      },
      child: const Icon(Icons.add, size: 30),
    );
  }
}

AddNewNote(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 18, 33, 40),
                  Colors.blueGrey.shade800,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
            child: AddNoteColumnFields(headTitle: 'Add New Note'),
          ),
        ),
      );
    },
  );
}
