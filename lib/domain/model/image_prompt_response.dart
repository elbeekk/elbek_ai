import 'dart:convert';

class ImagePromptResponse {
  final String? model;
  final DateTime? createdAt;
  final String? response;
  final bool? done;
  final String? doneReason;
  final List<int>? context;
  final int? totalDuration;
  final int? loadDuration;
  final int? promptEvalCount;
  final int? promptEvalDuration;
  final int? evalCount;
  final int? evalDuration;

  ImagePromptResponse({
    this.model,
    this.createdAt,
    this.response,
    this.done,
    this.doneReason,
    this.context,
    this.totalDuration,
    this.loadDuration,
    this.promptEvalCount,
    this.promptEvalDuration,
    this.evalCount,
    this.evalDuration,
  });

  ImagePromptResponse copyWith({
    String? model,
    DateTime? createdAt,
    String? response,
    bool? done,
    String? doneReason,
    List<int>? context,
    int? totalDuration,
    int? loadDuration,
    int? promptEvalCount,
    int? promptEvalDuration,
    int? evalCount,
    int? evalDuration,
  }) =>
      ImagePromptResponse(
        model: model ?? this.model,
        createdAt: createdAt ?? this.createdAt,
        response: response ?? this.response,
        done: done ?? this.done,
        doneReason: doneReason ?? this.doneReason,
        context: context ?? this.context,
        totalDuration: totalDuration ?? this.totalDuration,
        loadDuration: loadDuration ?? this.loadDuration,
        promptEvalCount: promptEvalCount ?? this.promptEvalCount,
        promptEvalDuration: promptEvalDuration ?? this.promptEvalDuration,
        evalCount: evalCount ?? this.evalCount,
        evalDuration: evalDuration ?? this.evalDuration,
      );

  factory ImagePromptResponse.fromRawJson(String str) => ImagePromptResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImagePromptResponse.fromJson(Map<String, dynamic> json) => ImagePromptResponse(
    model: json["model"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    response: json["response"],
    done: json["done"],
    doneReason: json["done_reason"],
    context: json["context"] == null ? [] : List<int>.from(json["context"]!.map((x) => x)),
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
    "response": response,
    "done": done,
    "done_reason": doneReason,
    "context": context == null ? [] : List<dynamic>.from(context!.map((x) => x)),
    "total_duration": totalDuration,
    "load_duration": loadDuration,
    "prompt_eval_count": promptEvalCount,
    "prompt_eval_duration": promptEvalDuration,
    "eval_count": evalCount,
    "eval_duration": evalDuration,
  };
}
