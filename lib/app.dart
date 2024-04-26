import 'package:genotek/genotek/cubit/genotek_cubit.dart';
import 'package:genotek/genotek/views/genotek_view.dart';
import 'package:flutter/material.dart';
import 'package:genotek/utils/genotek_theme_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genotek/repositories/genotek_repository.dart';

class GenotekApp extends StatelessWidget {
  const GenotekApp({super.key, required GenotekRepository repository}) : _repository = repository;

  final GenotekRepository _repository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GenotekCubit>(
      create: (context) {
        final cubit = GenotekCubit(_repository);
        cubit.init();
        return cubit;
      },
      child: MaterialApp(
        theme: genotekLightTheme,
        home: const GenotekView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
