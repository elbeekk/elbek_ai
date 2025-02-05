import 'dart:convert';

class PullingResponse {
  final String? status;
  final String? digest;
  final int? total;
  final int? completed;

  PullingResponse({
    this.status,
    this.digest,
    this.total,
    this.completed,
  });

  PullingResponse copyWith({
    String? status,
    String? digest,
    int? total,
    int? completed,
  }) =>
      PullingResponse(
        status: status ?? this.status,
        digest: digest ?? this.digest,
        total: total ?? this.total,
        completed: completed ?? this.completed,
      );

  factory PullingResponse.fromRawJson(String str) => PullingResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PullingResponse.fromJson(Map<String, dynamic> json) => PullingResponse(
    status: json["status"],
    digest: json["digest"],
    total: json["total"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "digest": digest,
    "total": total,
    "completed": completed,
  };
}
