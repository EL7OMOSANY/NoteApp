import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_book_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_book_app/cubits/simple_bloc_observer.dart';
import 'package:note_book_app/note_app.dart';
import 'package:note_book_app/models/note_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  if (!Hive.isBoxOpen('notes')) {
    await Hive.openBox<NoteModel>('notes');
  }
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: const NoteApp(),
    ),
  );
}
