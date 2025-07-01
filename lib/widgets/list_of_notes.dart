import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_book_app/screen_pressed_note.dart';
import 'package:note_book_app/widgets/custom_note.dart';

class ListOfNotes extends StatelessWidget {
  const ListOfNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder:
          (context, index) => MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const ScreenPressedNote(),
                ),
              );
            },
            child: CustomNote(),
          ),
    );
  }
}
