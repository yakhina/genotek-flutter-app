part of 'genotek_cubit.dart';

enum GenotekStatus { initial, loading, dataReady, failure }

extension GenotekStatusX on GenotekStatus {
  bool get isInitial => this == GenotekStatus.initial;
  bool get isLoading => this == GenotekStatus.loading;
  bool get isFailure => this == GenotekStatus.failure;
  bool get isDataReady => this == GenotekStatus.dataReady;
}

@JsonSerializable()
class GenotekState extends Equatable {
  const GenotekState({
    this.status = GenotekStatus.initial,
    GenotekData? genotekData,
  }) : genotekData = genotekData ?? GenotekData.defaultGenotekData;

  final GenotekStatus status;
  final GenotekData genotekData;

  GenotekState copyWith({
    GenotekStatus? status,
    GenotekData? genotekData,
  }) {
    return GenotekState(
      status: status ?? this.status,
      genotekData: genotekData ?? this.genotekData,
    );
  }

  factory GenotekState.fromJson(Map<String, dynamic> json) => _$GenotekStateFromJson(json);
  Map<String, dynamic>? toJson() => _$GenotekStateToJson(this);

  @override
  List<Object?> get props => [status, genotekData];
}
