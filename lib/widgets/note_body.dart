import 'package:flutter/material.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Text(
              'Note Title',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          
          subtitle: Text(
            'Build yut Carear with Mohmmed Ayman.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70.withOpacity(.4),
            ),
          ),

          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 128),
            child: IconButton(
              icon: Icon(Icons.delete, size: 28),
              onPressed: () {
                // Handle delete action
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text("May 21,2022"),
        ),
      ],
    );
  }
}
