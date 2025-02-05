part of 'models_bloc.dart';

@freezed
class ModelsEvent with _$ModelsEvent {
  const factory ModelsEvent.getLocalModels(BuildContext context) =
      GetLocalModels;

  const factory ModelsEvent.deleteModel(BuildContext context, String name) =
      DeleteModel;

  const factory ModelsEvent.pullModel(BuildContext context, String name,
      {required Function(Stream<Uint8List>) onSuccess}) = PullModel;

  const factory ModelsEvent.selectModel(int index) = SelectModel;

  const factory ModelsEvent.setLoadingPercent(int? percent) =
      SetLoadingPercent;
}
