import 'package:bloc/bloc.dart';
import 'package:elbek_ai/infrastructure/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/di/dependency_manager.dart';
import '../../domain/model/local_models_response.dart';

part 'models_event.dart';

part 'models_state.dart';

part 'models_bloc.freezed.dart';

class ModelsBloc extends Bloc<ModelsEvent, ModelsState> {
  ModelsBloc() : super(const ModelsState()) {
    on<GetLocalModels>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));

        final res = await ollamaRepository.getLocalModels();

        res.fold(
          (l) async {
            emit(state.copyWith(
                localModels: l.models ?? [],
                selectedIndex: (l.models?.isNotEmpty ?? false) ? 0 : null));

            if (LocalStorage.getSelectedModel() != null) {
              emit(
                state.copyWith(
                  selectedIndex: l.models?.indexWhere(
                    (element) =>
                        element.name == LocalStorage.getSelectedModel()?.name,
                  ),
                ),
              );
            } else {
              await LocalStorage.setSelectedModel(l.models?.firstOrNull);
            }
          },
          (r) {},
        );

        emit(state.copyWith(isLoading: false));
      },
    );
    on<DeleteModel>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));

        final res = await ollamaRepository.deleteModel(event.name);

        res.fold(
          (l) {
            List<Model> models = state.localModels.toList();

            models.removeWhere(
              (element) => element.name == event.name,
            );
            if (LocalStorage.getSelectedModel()?.name == event.name) {
              LocalStorage.setSelectedModel(null);
              emit(state.copyWith(selectedIndex: 0));
            }
            emit(state.copyWith(localModels: models));
          },
          (r) {},
        );

        emit(state.copyWith(isLoading: false));
      },
    );
    on<SelectModel>(
      (event, emit) async {
        emit(state.copyWith(selectedIndex: event.index));
        LocalStorage.setSelectedModel(state.localModels[event.index]);
      },
    );
    on<PullModel>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));

        final res = await ollamaRepository.pullModel(event.name);

        res.fold(
          (l) {
            event.onSuccess.call(l);
            print('object');
          },
          (r) {
            print('object');
          },
        );

        emit(state.copyWith(isLoading: false));
      },
    );
    on<SetLoadingPercent>(
      (event, emit) {
        emit(state.copyWith(loadingPercent: event.percent));
      },
    );
  }
}
