import 'package:flutter/foundation.dart';
import 'package:genotek/genotek/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/widgets.dart';
import 'package:genotek/repositories/genotek_repository.dart' show GenotekRepository;

part 'genotek_cubit.g.dart';
part 'genotek_state.dart';

class GenotekCubit extends Cubit<GenotekState> {
  GenotekCubit(this._genotekRepository) : super(const GenotekState());

  GenotekData? data = GenotekData.defaultGenotekData;
  final GenotekRepository _genotekRepository;

  void init() {
    emit(GenotekState(genotekData: data, status: GenotekStatus.initial));
    debugPrint("Genotek: GenotekCubit emit .initial: $data");
    _genotekRepository.refresh();
    AppLifecycleListener(onResume: () => refresh(), onStateChange: refreshAppState);
  }

  refreshAppState(AppLifecycleState state) {
    emit(GenotekState(genotekData: data, status: GenotekStatus.initial));
    if (data == null) {
      emit(GenotekState(genotekData: data, status: GenotekStatus.failure));
      debugPrint("Genotek: GenotekCubit emit .failure: $data");
    } else {
      emit(GenotekState(genotekData: data, status: GenotekStatus.dataReady));
      debugPrint("Genotek: GenotekCubit emit .dataReady: $data");
    }
  }

  Future<void> refresh() async {
    data = await _genotekRepository.refresh();

    debugPrint("Genotek: GenotekRepository recieved data $data");
    if (data == null) {
      emit(GenotekState(genotekData: data, status: GenotekStatus.failure));
      debugPrint("Genotek: GenotekCubit emit .failure: $data");
    } else {
      emit(GenotekState(genotekData: data, status: GenotekStatus.dataReady));
      debugPrint("Genotek: GenotekCubit emit .dataReady: $data");
    }
  }
}
