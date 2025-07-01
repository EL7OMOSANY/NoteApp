import 'package:flutter/material.dart';
import 'package:note_book_app/widgets/custom_text_field.dart';
import 'package:note_book_app/widgets/save_note_button.dart';

class AddNoteColumnFields extends StatefulWidget {
  AddNoteColumnFields({super.key, required this.headTitle});
  final String headTitle;

  @override
  State<AddNoteColumnFields> createState() => _AddNoteColumnFieldsState();
}

class _AddNoteColumnFieldsState extends State<AddNoteColumnFields> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? noteTitle, noteBody;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.headTitle,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: "Enter note title",
            maxLines: 1,
            onSaved: (value) {
              noteTitle = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: "Enter note body",
            maxLines: 5,
            onSaved: (value) {
              noteBody = value;
            },
          ),
          const SizedBox(height: 20),
          SaveNoteButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.blueGrey.shade700,
                    content: Center(
                      child: Text(
                        'Note saved',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
