// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getLocalModels,
    required TResult Function(BuildContext context, String name) deleteModel,
    required TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)
        pullModel,
    required TResult Function(int index) selectModel,
    required TResult Function(int? percent) setLoadingPercent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getLocalModels,
    TResult? Function(BuildContext context, String name)? deleteModel,
    TResult? Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult? Function(int index)? selectModel,
    TResult? Function(int? percent)? setLoadingPercent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getLocalModels,
    TResult Function(BuildContext context, String name)? deleteModel,
    TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult Function(int index)? selectModel,
    TResult Function(int? percent)? setLoadingPercent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalModels value) getLocalModels,
    required TResult Function(DeleteModel value) deleteModel,
    required TResult Function(PullModel value) pullModel,
    required TResult Function(SelectModel value) selectModel,
    required TResult Function(SetLoadingPercent value) setLoadingPercent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalModels value)? getLocalModels,
    TResult? Function(DeleteModel value)? deleteModel,
    TResult? Function(PullModel value)? pullModel,
    TResult? Function(SelectModel value)? selectModel,
    TResult? Function(SetLoadingPercent value)? setLoadingPercent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalModels value)? getLocalModels,
    TResult Function(DeleteModel value)? deleteModel,
    TResult Function(PullModel value)? pullModel,
    TResult Function(SelectModel value)? selectModel,
    TResult Function(SetLoadingPercent value)? setLoadingPercent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsEventCopyWith<$Res> {
  factory $ModelsEventCopyWith(
          ModelsEvent value, $Res Function(ModelsEvent) then) =
      _$ModelsEventCopyWithImpl<$Res, ModelsEvent>;
}

/// @nodoc
class _$ModelsEventCopyWithImpl<$Res, $Val extends ModelsEvent>
    implements $ModelsEventCopyWith<$Res> {
  _$ModelsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetLocalModelsImplCopyWith<$Res> {
  factory _$$GetLocalModelsImplCopyWith(_$GetLocalModelsImpl value,
          $Res Function(_$GetLocalModelsImpl) then) =
      __$$GetLocalModelsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$GetLocalModelsImplCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$GetLocalModelsImpl>
    implements _$$GetLocalModelsImplCopyWith<$Res> {
  __$$GetLocalModelsImplCopyWithImpl(
      _$GetLocalModelsImpl _value, $Res Function(_$GetLocalModelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$GetLocalModelsImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetLocalModelsImpl implements GetLocalModels {
  const _$GetLocalModelsImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ModelsEvent.getLocalModels(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocalModelsImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocalModelsImplCopyWith<_$GetLocalModelsImpl> get copyWith =>
      __$$GetLocalModelsImplCopyWithImpl<_$GetLocalModelsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getLocalModels,
    required TResult Function(BuildContext context, String name) deleteModel,
    required TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)
        pullModel,
    required TResult Function(int index) selectModel,
    required TResult Function(int? percent) setLoadingPercent,
  }) {
    return getLocalModels(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getLocalModels,
    TResult? Function(BuildContext context, String name)? deleteModel,
    TResult? Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult? Function(int index)? selectModel,
    TResult? Function(int? percent)? setLoadingPercent,
  }) {
    return getLocalModels?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getLocalModels,
    TResult Function(BuildContext context, String name)? deleteModel,
    TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult Function(int index)? selectModel,
    TResult Function(int? percent)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (getLocalModels != null) {
      return getLocalModels(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalModels value) getLocalModels,
    required TResult Function(DeleteModel value) deleteModel,
    required TResult Function(PullModel value) pullModel,
    required TResult Function(SelectModel value) selectModel,
    required TResult Function(SetLoadingPercent value) setLoadingPercent,
  }) {
    return getLocalModels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalModels value)? getLocalModels,
    TResult? Function(DeleteModel value)? deleteModel,
    TResult? Function(PullModel value)? pullModel,
    TResult? Function(SelectModel value)? selectModel,
    TResult? Function(SetLoadingPercent value)? setLoadingPercent,
  }) {
    return getLocalModels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalModels value)? getLocalModels,
    TResult Function(DeleteModel value)? deleteModel,
    TResult Function(PullModel value)? pullModel,
    TResult Function(SelectModel value)? selectModel,
    TResult Function(SetLoadingPercent value)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (getLocalModels != null) {
      return getLocalModels(this);
    }
    return orElse();
  }
}

abstract class GetLocalModels implements ModelsEvent {
  const factory GetLocalModels(final BuildContext context) =
      _$GetLocalModelsImpl;

  BuildContext get context;

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLocalModelsImplCopyWith<_$GetLocalModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteModelImplCopyWith<$Res> {
  factory _$$DeleteModelImplCopyWith(
          _$DeleteModelImpl value, $Res Function(_$DeleteModelImpl) then) =
      __$$DeleteModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String name});
}

/// @nodoc
class __$$DeleteModelImplCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$DeleteModelImpl>
    implements _$$DeleteModelImplCopyWith<$Res> {
  __$$DeleteModelImplCopyWithImpl(
      _$DeleteModelImpl _value, $Res Function(_$DeleteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? name = null,
  }) {
    return _then(_$DeleteModelImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteModelImpl implements DeleteModel {
  const _$DeleteModelImpl(this.context, this.name);

  @override
  final BuildContext context;
  @override
  final String name;

  @override
  String toString() {
    return 'ModelsEvent.deleteModel(context: $context, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteModelImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, name);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteModelImplCopyWith<_$DeleteModelImpl> get copyWith =>
      __$$DeleteModelImplCopyWithImpl<_$DeleteModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getLocalModels,
    required TResult Function(BuildContext context, String name) deleteModel,
    required TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)
        pullModel,
    required TResult Function(int index) selectModel,
    required TResult Function(int? percent) setLoadingPercent,
  }) {
    return deleteModel(context, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getLocalModels,
    TResult? Function(BuildContext context, String name)? deleteModel,
    TResult? Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult? Function(int index)? selectModel,
    TResult? Function(int? percent)? setLoadingPercent,
  }) {
    return deleteModel?.call(context, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getLocalModels,
    TResult Function(BuildContext context, String name)? deleteModel,
    TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult Function(int index)? selectModel,
    TResult Function(int? percent)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (deleteModel != null) {
      return deleteModel(context, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalModels value) getLocalModels,
    required TResult Function(DeleteModel value) deleteModel,
    required TResult Function(PullModel value) pullModel,
    required TResult Function(SelectModel value) selectModel,
    required TResult Function(SetLoadingPercent value) setLoadingPercent,
  }) {
    return deleteModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalModels value)? getLocalModels,
    TResult? Function(DeleteModel value)? deleteModel,
    TResult? Function(PullModel value)? pullModel,
    TResult? Function(SelectModel value)? selectModel,
    TResult? Function(SetLoadingPercent value)? setLoadingPercent,
  }) {
    return deleteModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalModels value)? getLocalModels,
    TResult Function(DeleteModel value)? deleteModel,
    TResult Function(PullModel value)? pullModel,
    TResult Function(SelectModel value)? selectModel,
    TResult Function(SetLoadingPercent value)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (deleteModel != null) {
      return deleteModel(this);
    }
    return orElse();
  }
}

abstract class DeleteModel implements ModelsEvent {
  const factory DeleteModel(final BuildContext context, final String name) =
      _$DeleteModelImpl;

  BuildContext get context;
  String get name;

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteModelImplCopyWith<_$DeleteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PullModelImplCopyWith<$Res> {
  factory _$$PullModelImplCopyWith(
          _$PullModelImpl value, $Res Function(_$PullModelImpl) then) =
      __$$PullModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String name,
      dynamic Function(Stream<Uint8List>) onSuccess});
}

/// @nodoc
class __$$PullModelImplCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$PullModelImpl>
    implements _$$PullModelImplCopyWith<$Res> {
  __$$PullModelImplCopyWithImpl(
      _$PullModelImpl _value, $Res Function(_$PullModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? name = null,
    Object? onSuccess = null,
  }) {
    return _then(_$PullModelImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Stream<Uint8List>),
    ));
  }
}

/// @nodoc

class _$PullModelImpl implements PullModel {
  const _$PullModelImpl(this.context, this.name, {required this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String name;
  @override
  final dynamic Function(Stream<Uint8List>) onSuccess;

  @override
  String toString() {
    return 'ModelsEvent.pullModel(context: $context, name: $name, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullModelImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, name, onSuccess);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullModelImplCopyWith<_$PullModelImpl> get copyWith =>
      __$$PullModelImplCopyWithImpl<_$PullModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getLocalModels,
    required TResult Function(BuildContext context, String name) deleteModel,
    required TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)
        pullModel,
    required TResult Function(int index) selectModel,
    required TResult Function(int? percent) setLoadingPercent,
  }) {
    return pullModel(context, name, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getLocalModels,
    TResult? Function(BuildContext context, String name)? deleteModel,
    TResult? Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult? Function(int index)? selectModel,
    TResult? Function(int? percent)? setLoadingPercent,
  }) {
    return pullModel?.call(context, name, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getLocalModels,
    TResult Function(BuildContext context, String name)? deleteModel,
    TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult Function(int index)? selectModel,
    TResult Function(int? percent)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (pullModel != null) {
      return pullModel(context, name, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalModels value) getLocalModels,
    required TResult Function(DeleteModel value) deleteModel,
    required TResult Function(PullModel value) pullModel,
    required TResult Function(SelectModel value) selectModel,
    required TResult Function(SetLoadingPercent value) setLoadingPercent,
  }) {
    return pullModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalModels value)? getLocalModels,
    TResult? Function(DeleteModel value)? deleteModel,
    TResult? Function(PullModel value)? pullModel,
    TResult? Function(SelectModel value)? selectModel,
    TResult? Function(SetLoadingPercent value)? setLoadingPercent,
  }) {
    return pullModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalModels value)? getLocalModels,
    TResult Function(DeleteModel value)? deleteModel,
    TResult Function(PullModel value)? pullModel,
    TResult Function(SelectModel value)? selectModel,
    TResult Function(SetLoadingPercent value)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (pullModel != null) {
      return pullModel(this);
    }
    return orElse();
  }
}

abstract class PullModel implements ModelsEvent {
  const factory PullModel(final BuildContext context, final String name,
          {required final dynamic Function(Stream<Uint8List>) onSuccess}) =
      _$PullModelImpl;

  BuildContext get context;
  String get name;
  dynamic Function(Stream<Uint8List>) get onSuccess;

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullModelImplCopyWith<_$PullModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectModelImplCopyWith<$Res> {
  factory _$$SelectModelImplCopyWith(
          _$SelectModelImpl value, $Res Function(_$SelectModelImpl) then) =
      __$$SelectModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectModelImplCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$SelectModelImpl>
    implements _$$SelectModelImplCopyWith<$Res> {
  __$$SelectModelImplCopyWithImpl(
      _$SelectModelImpl _value, $Res Function(_$SelectModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectModelImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectModelImpl implements SelectModel {
  const _$SelectModelImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ModelsEvent.selectModel(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectModelImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectModelImplCopyWith<_$SelectModelImpl> get copyWith =>
      __$$SelectModelImplCopyWithImpl<_$SelectModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getLocalModels,
    required TResult Function(BuildContext context, String name) deleteModel,
    required TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)
        pullModel,
    required TResult Function(int index) selectModel,
    required TResult Function(int? percent) setLoadingPercent,
  }) {
    return selectModel(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getLocalModels,
    TResult? Function(BuildContext context, String name)? deleteModel,
    TResult? Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult? Function(int index)? selectModel,
    TResult? Function(int? percent)? setLoadingPercent,
  }) {
    return selectModel?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getLocalModels,
    TResult Function(BuildContext context, String name)? deleteModel,
    TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult Function(int index)? selectModel,
    TResult Function(int? percent)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (selectModel != null) {
      return selectModel(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalModels value) getLocalModels,
    required TResult Function(DeleteModel value) deleteModel,
    required TResult Function(PullModel value) pullModel,
    required TResult Function(SelectModel value) selectModel,
    required TResult Function(SetLoadingPercent value) setLoadingPercent,
  }) {
    return selectModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalModels value)? getLocalModels,
    TResult? Function(DeleteModel value)? deleteModel,
    TResult? Function(PullModel value)? pullModel,
    TResult? Function(SelectModel value)? selectModel,
    TResult? Function(SetLoadingPercent value)? setLoadingPercent,
  }) {
    return selectModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalModels value)? getLocalModels,
    TResult Function(DeleteModel value)? deleteModel,
    TResult Function(PullModel value)? pullModel,
    TResult Function(SelectModel value)? selectModel,
    TResult Function(SetLoadingPercent value)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (selectModel != null) {
      return selectModel(this);
    }
    return orElse();
  }
}

abstract class SelectModel implements ModelsEvent {
  const factory SelectModel(final int index) = _$SelectModelImpl;

  int get index;

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectModelImplCopyWith<_$SelectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetLoadingPercentImplCopyWith<$Res> {
  factory _$$SetLoadingPercentImplCopyWith(_$SetLoadingPercentImpl value,
          $Res Function(_$SetLoadingPercentImpl) then) =
      __$$SetLoadingPercentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? percent});
}

/// @nodoc
class __$$SetLoadingPercentImplCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$SetLoadingPercentImpl>
    implements _$$SetLoadingPercentImplCopyWith<$Res> {
  __$$SetLoadingPercentImplCopyWithImpl(_$SetLoadingPercentImpl _value,
      $Res Function(_$SetLoadingPercentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = freezed,
  }) {
    return _then(_$SetLoadingPercentImpl(
      freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetLoadingPercentImpl implements SetLoadingPercent {
  const _$SetLoadingPercentImpl(this.percent);

  @override
  final int? percent;

  @override
  String toString() {
    return 'ModelsEvent.setLoadingPercent(percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLoadingPercentImpl &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percent);

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLoadingPercentImplCopyWith<_$SetLoadingPercentImpl> get copyWith =>
      __$$SetLoadingPercentImplCopyWithImpl<_$SetLoadingPercentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getLocalModels,
    required TResult Function(BuildContext context, String name) deleteModel,
    required TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)
        pullModel,
    required TResult Function(int index) selectModel,
    required TResult Function(int? percent) setLoadingPercent,
  }) {
    return setLoadingPercent(percent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getLocalModels,
    TResult? Function(BuildContext context, String name)? deleteModel,
    TResult? Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult? Function(int index)? selectModel,
    TResult? Function(int? percent)? setLoadingPercent,
  }) {
    return setLoadingPercent?.call(percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getLocalModels,
    TResult Function(BuildContext context, String name)? deleteModel,
    TResult Function(BuildContext context, String name,
            dynamic Function(Stream<Uint8List>) onSuccess)?
        pullModel,
    TResult Function(int index)? selectModel,
    TResult Function(int? percent)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (setLoadingPercent != null) {
      return setLoadingPercent(percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalModels value) getLocalModels,
    required TResult Function(DeleteModel value) deleteModel,
    required TResult Function(PullModel value) pullModel,
    required TResult Function(SelectModel value) selectModel,
    required TResult Function(SetLoadingPercent value) setLoadingPercent,
  }) {
    return setLoadingPercent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalModels value)? getLocalModels,
    TResult? Function(DeleteModel value)? deleteModel,
    TResult? Function(PullModel value)? pullModel,
    TResult? Function(SelectModel value)? selectModel,
    TResult? Function(SetLoadingPercent value)? setLoadingPercent,
  }) {
    return setLoadingPercent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalModels value)? getLocalModels,
    TResult Function(DeleteModel value)? deleteModel,
    TResult Function(PullModel value)? pullModel,
    TResult Function(SelectModel value)? selectModel,
    TResult Function(SetLoadingPercent value)? setLoadingPercent,
    required TResult orElse(),
  }) {
    if (setLoadingPercent != null) {
      return setLoadingPercent(this);
    }
    return orElse();
  }
}

abstract class SetLoadingPercent implements ModelsEvent {
  const factory SetLoadingPercent(final int? percent) = _$SetLoadingPercentImpl;

  int? get percent;

  /// Create a copy of ModelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLoadingPercentImplCopyWith<_$SetLoadingPercentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModelsState {
  List<Model> get localModels => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;
  int? get loadingPercent => throw _privateConstructorUsedError;

  /// Create a copy of ModelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelsStateCopyWith<ModelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsStateCopyWith<$Res> {
  factory $ModelsStateCopyWith(
          ModelsState value, $Res Function(ModelsState) then) =
      _$ModelsStateCopyWithImpl<$Res, ModelsState>;
  @useResult
  $Res call(
      {List<Model> localModels,
      bool isLoading,
      int? selectedIndex,
      int? loadingPercent});
}

/// @nodoc
class _$ModelsStateCopyWithImpl<$Res, $Val extends ModelsState>
    implements $ModelsStateCopyWith<$Res> {
  _$ModelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localModels = null,
    Object? isLoading = null,
    Object? selectedIndex = freezed,
    Object? loadingPercent = freezed,
  }) {
    return _then(_value.copyWith(
      localModels: null == localModels
          ? _value.localModels
          : localModels // ignore: cast_nullable_to_non_nullable
              as List<Model>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      loadingPercent: freezed == loadingPercent
          ? _value.loadingPercent
          : loadingPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelStateImplCopyWith<$Res>
    implements $ModelsStateCopyWith<$Res> {
  factory _$$ModelStateImplCopyWith(
          _$ModelStateImpl value, $Res Function(_$ModelStateImpl) then) =
      __$$ModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Model> localModels,
      bool isLoading,
      int? selectedIndex,
      int? loadingPercent});
}

/// @nodoc
class __$$ModelStateImplCopyWithImpl<$Res>
    extends _$ModelsStateCopyWithImpl<$Res, _$ModelStateImpl>
    implements _$$ModelStateImplCopyWith<$Res> {
  __$$ModelStateImplCopyWithImpl(
      _$ModelStateImpl _value, $Res Function(_$ModelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localModels = null,
    Object? isLoading = null,
    Object? selectedIndex = freezed,
    Object? loadingPercent = freezed,
  }) {
    return _then(_$ModelStateImpl(
      localModels: null == localModels
          ? _value._localModels
          : localModels // ignore: cast_nullable_to_non_nullable
              as List<Model>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      loadingPercent: freezed == loadingPercent
          ? _value.loadingPercent
          : loadingPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ModelStateImpl implements _ModelState {
  const _$ModelStateImpl(
      {final List<Model> localModels = const [],
      this.isLoading = false,
      this.selectedIndex = 0,
      this.loadingPercent = null})
      : _localModels = localModels;

  final List<Model> _localModels;
  @override
  @JsonKey()
  List<Model> get localModels {
    if (_localModels is EqualUnmodifiableListView) return _localModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localModels);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int? selectedIndex;
  @override
  @JsonKey()
  final int? loadingPercent;

  @override
  String toString() {
    return 'ModelsState(localModels: $localModels, isLoading: $isLoading, selectedIndex: $selectedIndex, loadingPercent: $loadingPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelStateImpl &&
            const DeepCollectionEquality()
                .equals(other._localModels, _localModels) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.loadingPercent, loadingPercent) ||
                other.loadingPercent == loadingPercent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_localModels),
      isLoading,
      selectedIndex,
      loadingPercent);

  /// Create a copy of ModelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelStateImplCopyWith<_$ModelStateImpl> get copyWith =>
      __$$ModelStateImplCopyWithImpl<_$ModelStateImpl>(this, _$identity);
}

abstract class _ModelState implements ModelsState {
  const factory _ModelState(
      {final List<Model> localModels,
      final bool isLoading,
      final int? selectedIndex,
      final int? loadingPercent}) = _$ModelStateImpl;

  @override
  List<Model> get localModels;
  @override
  bool get isLoading;
  @override
  int? get selectedIndex;
  @override
  int? get loadingPercent;

  /// Create a copy of ModelsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelStateImplCopyWith<_$ModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
