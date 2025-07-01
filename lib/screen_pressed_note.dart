import 'package:flutter/material.dart';
import 'package:note_book_app/widgets/add_note_column_fields.dart';
import 'package:note_book_app/widgets/custom_app_bar.dart';

class ScreenPressedNote extends StatelessWidget {
  const ScreenPressedNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Selected Note', icon: Icons.done),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
          margin: EdgeInsets.only(top: 16, left: 12, right: 12, bottom: 32),
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
          child: AddNoteColumnFields(headTitle: 'Edit note'),
        ),
      ),
    );
  }
}
