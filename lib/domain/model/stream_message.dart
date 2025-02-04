import 'dart:convert';
import 'dart:typed_data';

class StreamMessage {
  final String? model;
  final DateTime? createdAt;
  final Message? message;
  final String? doneReason;
  final bool? done;
  final int? totalDuration;
  final int? loadDuration;
  final int? promptEvalCount;
  final int? promptEvalDuration;
  final int? evalCount;
  final int? evalDuration;

  StreamMessage({
    this.model,
    this.createdAt,
    this.message,
    this.doneReason,
    this.done,
    this.totalDuration,
    this.loadDuration,
    this.promptEvalCount,
    this.promptEvalDuration,
    this.evalCount,
    this.evalDuration,
  });

  StreamMessage copyWith({
    String? model,
    DateTime? createdAt,
    Message? message,
    String? doneReason,
    bool? done,
    int? totalDuration,
    int? loadDuration,
    int? promptEvalCount,
    int? promptEvalDuration,
    int? evalCount,
    int? evalDuration,
  }) =>
      StreamMessage(
        model: model ?? this.model,
        createdAt: createdAt ?? this.createdAt,
        message: message ?? this.message,
        doneReason: doneReason ?? this.doneReason,
        done: done ?? this.done,
        totalDuration: totalDuration ?? this.totalDuration,
        loadDuration: loadDuration ?? this.loadDuration,
        promptEvalCount: promptEvalCount ?? this.promptEvalCount,
        promptEvalDuration: promptEvalDuration ?? this.promptEvalDuration,
        evalCount: evalCount ?? this.evalCount,
        evalDuration: evalDuration ?? this.evalDuration,
      );

  factory StreamMessage.fromRawJson(String str) =>
      StreamMessage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StreamMessage.fromJson(Map<String, dynamic> json) => StreamMessage(
        model: json["model"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        message:
            json["message"] == null ? null : Message.fromJson(json["message"]),
        doneReason: json["done_reason"],
        done: json["done"],
        totalDuration: json["total_duration"],
        loadDuration: json["load_duration"],
        promptEvalCount: json["prompt_eval_count"],
        promptEvalDuration: json["prompt_eval_duration"],
        evalCount: json["eval_count"],
        evalDuration: json["eval_duration"],
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "created_at": createdAt?.toIso8601String(),
        "message": message?.toJson(),
        "done_reason": doneReason,
        "done": done,
        "total_duration": totalDuration,
        "load_duration": loadDuration,
        "prompt_eval_count": promptEvalCount,
        "prompt_eval_duration": promptEvalDuration,
        "eval_count": evalCount,
        "eval_duration": evalDuration,
      };
}

class Message {
  final String? role;
  final String? content;
  final List<Uint8List>? images;

  Message({
    this.images,
    this.role,
    this.content,
  });

  Message copyWith({
    String? role,
    List<Uint8List>? images,
    String? content,
  }) =>
      Message(
        role: role ?? this.role,
        content: content ?? this.content,
        images: images ?? this.images,
      );

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        role: json["role"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "role": role,
        "content": content,
        "images": images
            ?.map(
              (e) => base64Encode(e),
            )
            .toList(),
      };
}
