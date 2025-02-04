// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)
        sendMessage,
    required TResult Function(StreamMessage message) appendMessage,
    required TResult Function() pickImages,
    required TResult Function(Uint8List image) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult? Function(StreamMessage message)? appendMessage,
    TResult? Function()? pickImages,
    TResult? Function(Uint8List image)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult Function(StreamMessage message)? appendMessage,
    TResult Function()? pickImages,
    TResult Function(Uint8List image)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AppendMessage value) appendMessage,
    required TResult Function(PickImages value) pickImages,
    required TResult Function(RemoveImage value) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AppendMessage value)? appendMessage,
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(RemoveImage value)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AppendMessage value)? appendMessage,
    TResult Function(PickImages value)? pickImages,
    TResult Function(RemoveImage value)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, dynamic Function(Stream<Uint8List>) onSuccess});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? onSuccess = null,
  }) {
    return _then(_$SendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(Stream<Uint8List>),
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(this.message, {required this.onSuccess});

  @override
  final String message;
  @override
  final dynamic Function(Stream<Uint8List>) onSuccess;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, onSuccess);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)
        sendMessage,
    required TResult Function(StreamMessage message) appendMessage,
    required TResult Function() pickImages,
    required TResult Function(Uint8List image) removeImage,
  }) {
    return sendMessage(message, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult? Function(StreamMessage message)? appendMessage,
    TResult? Function()? pickImages,
    TResult? Function(Uint8List image)? removeImage,
  }) {
    return sendMessage?.call(message, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult Function(StreamMessage message)? appendMessage,
    TResult Function()? pickImages,
    TResult Function(Uint8List image)? removeImage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AppendMessage value) appendMessage,
    required TResult Function(PickImages value) pickImages,
    required TResult Function(RemoveImage value) removeImage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AppendMessage value)? appendMessage,
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(RemoveImage value)? removeImage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AppendMessage value)? appendMessage,
    TResult Function(PickImages value)? pickImages,
    TResult Function(RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage(final String message,
          {required final dynamic Function(Stream<Uint8List>) onSuccess}) =
      _$SendMessageImpl;

  String get message;
  dynamic Function(Stream<Uint8List>) get onSuccess;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppendMessageImplCopyWith<$Res> {
  factory _$$AppendMessageImplCopyWith(
          _$AppendMessageImpl value, $Res Function(_$AppendMessageImpl) then) =
      __$$AppendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StreamMessage message});
}

/// @nodoc
class __$$AppendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$AppendMessageImpl>
    implements _$$AppendMessageImplCopyWith<$Res> {
  __$$AppendMessageImplCopyWithImpl(
      _$AppendMessageImpl _value, $Res Function(_$AppendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as StreamMessage,
    ));
  }
}

/// @nodoc

class _$AppendMessageImpl implements AppendMessage {
  const _$AppendMessageImpl(this.message);

  @override
  final StreamMessage message;

  @override
  String toString() {
    return 'ChatEvent.appendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppendMessageImplCopyWith<_$AppendMessageImpl> get copyWith =>
      __$$AppendMessageImplCopyWithImpl<_$AppendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)
        sendMessage,
    required TResult Function(StreamMessage message) appendMessage,
    required TResult Function() pickImages,
    required TResult Function(Uint8List image) removeImage,
  }) {
    return appendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult? Function(StreamMessage message)? appendMessage,
    TResult? Function()? pickImages,
    TResult? Function(Uint8List image)? removeImage,
  }) {
    return appendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult Function(StreamMessage message)? appendMessage,
    TResult Function()? pickImages,
    TResult Function(Uint8List image)? removeImage,
    required TResult orElse(),
  }) {
    if (appendMessage != null) {
      return appendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AppendMessage value) appendMessage,
    required TResult Function(PickImages value) pickImages,
    required TResult Function(RemoveImage value) removeImage,
  }) {
    return appendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AppendMessage value)? appendMessage,
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(RemoveImage value)? removeImage,
  }) {
    return appendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AppendMessage value)? appendMessage,
    TResult Function(PickImages value)? pickImages,
    TResult Function(RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (appendMessage != null) {
      return appendMessage(this);
    }
    return orElse();
  }
}

abstract class AppendMessage implements ChatEvent {
  const factory AppendMessage(final StreamMessage message) =
      _$AppendMessageImpl;

  StreamMessage get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppendMessageImplCopyWith<_$AppendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImagesImplCopyWith<$Res> {
  factory _$$PickImagesImplCopyWith(
          _$PickImagesImpl value, $Res Function(_$PickImagesImpl) then) =
      __$$PickImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$PickImagesImpl>
    implements _$$PickImagesImplCopyWith<$Res> {
  __$$PickImagesImplCopyWithImpl(
      _$PickImagesImpl _value, $Res Function(_$PickImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickImagesImpl implements PickImages {
  const _$PickImagesImpl();

  @override
  String toString() {
    return 'ChatEvent.pickImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)
        sendMessage,
    required TResult Function(StreamMessage message) appendMessage,
    required TResult Function() pickImages,
    required TResult Function(Uint8List image) removeImage,
  }) {
    return pickImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult? Function(StreamMessage message)? appendMessage,
    TResult? Function()? pickImages,
    TResult? Function(Uint8List image)? removeImage,
  }) {
    return pickImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult Function(StreamMessage message)? appendMessage,
    TResult Function()? pickImages,
    TResult Function(Uint8List image)? removeImage,
    required TResult orElse(),
  }) {
    if (pickImages != null) {
      return pickImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AppendMessage value) appendMessage,
    required TResult Function(PickImages value) pickImages,
    required TResult Function(RemoveImage value) removeImage,
  }) {
    return pickImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AppendMessage value)? appendMessage,
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(RemoveImage value)? removeImage,
  }) {
    return pickImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AppendMessage value)? appendMessage,
    TResult Function(PickImages value)? pickImages,
    TResult Function(RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (pickImages != null) {
      return pickImages(this);
    }
    return orElse();
  }
}

abstract class PickImages implements ChatEvent {
  const factory PickImages() = _$PickImagesImpl;
}

/// @nodoc
abstract class _$$RemoveImageImplCopyWith<$Res> {
  factory _$$RemoveImageImplCopyWith(
          _$RemoveImageImpl value, $Res Function(_$RemoveImageImpl) then) =
      __$$RemoveImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List image});
}

/// @nodoc
class __$$RemoveImageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$RemoveImageImpl>
    implements _$$RemoveImageImplCopyWith<$Res> {
  __$$RemoveImageImplCopyWithImpl(
      _$RemoveImageImpl _value, $Res Function(_$RemoveImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$RemoveImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$RemoveImageImpl implements RemoveImage {
  const _$RemoveImageImpl(this.image);

  @override
  final Uint8List image;

  @override
  String toString() {
    return 'ChatEvent.removeImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImageImpl &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImageImplCopyWith<_$RemoveImageImpl> get copyWith =>
      __$$RemoveImageImplCopyWithImpl<_$RemoveImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)
        sendMessage,
    required TResult Function(StreamMessage message) appendMessage,
    required TResult Function() pickImages,
    required TResult Function(Uint8List image) removeImage,
  }) {
    return removeImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult? Function(StreamMessage message)? appendMessage,
    TResult? Function()? pickImages,
    TResult? Function(Uint8List image)? removeImage,
  }) {
    return removeImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, dynamic Function(Stream<Uint8List>) onSuccess)?
        sendMessage,
    TResult Function(StreamMessage message)? appendMessage,
    TResult Function()? pickImages,
    TResult Function(Uint8List image)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(AppendMessage value) appendMessage,
    required TResult Function(PickImages value) pickImages,
    required TResult Function(RemoveImage value) removeImage,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(AppendMessage value)? appendMessage,
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(RemoveImage value)? removeImage,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(AppendMessage value)? appendMessage,
    TResult Function(PickImages value)? pickImages,
    TResult Function(RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class RemoveImage implements ChatEvent {
  const factory RemoveImage(final Uint8List image) = _$RemoveImageImpl;

  Uint8List get image;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveImageImplCopyWith<_$RemoveImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  StreamMessage? get lastMessage => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Uint8List> get images => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {StreamMessage? lastMessage,
      List<Message> messages,
      bool isLoading,
      List<Uint8List> images});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMessage = freezed,
    Object? messages = null,
    Object? isLoading = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as StreamMessage?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StreamMessage? lastMessage,
      List<Message> messages,
      bool isLoading,
      List<Uint8List> images});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMessage = freezed,
    Object? messages = null,
    Object? isLoading = null,
    Object? images = null,
  }) {
    return _then(_$ChatStateImpl(
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as StreamMessage?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {this.lastMessage,
      final List<Message> messages = const [],
      this.isLoading = false,
      final List<Uint8List> images = const []})
      : _messages = messages,
        _images = images;

  @override
  final StreamMessage? lastMessage;
  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  final List<Uint8List> _images;
  @override
  @JsonKey()
  List<Uint8List> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ChatState(lastMessage: $lastMessage, messages: $messages, isLoading: $isLoading, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastMessage,
      const DeepCollectionEquality().hash(_messages),
      isLoading,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final StreamMessage? lastMessage,
      final List<Message> messages,
      final bool isLoading,
      final List<Uint8List> images}) = _$ChatStateImpl;

  @override
  StreamMessage? get lastMessage;
  @override
  List<Message> get messages;
  @override
  bool get isLoading;
  @override
  List<Uint8List> get images;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
