import 'package:flutter/material.dart';
import 'package:genotek/app.dart';
import 'package:genotek/repositories/genotek_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genotek/genotek_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GenotekRepository genotekRepository = GenotekRepository();

  Bloc.observer = const GenotekBlocObserver();

  runApp(GenotekApp(repository: genotekRepository));
}
