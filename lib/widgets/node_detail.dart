import 'package:flutter/material.dart';
import 'package:note_book_app/widgets/note_body.dart';

class NoteDetail extends StatelessWidget {
  const NoteDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: const EdgeInsets.only(left: 6, right: 6, top: 12, bottom: 1),

      child: NoteBody(),
    );
  }
}
