part of 'models_bloc.dart';

@freezed
class ModelsState with _$ModelsState {
  const factory ModelsState({
    @Default([]) List<Model> localModels,
    @Default(false) bool isLoading,
    @Default(0) int? selectedIndex,
    @Default(null) int? loadingPercent,
  }) = _ModelState;
}
