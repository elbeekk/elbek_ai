import 'dart:convert';

class LocalModelsResponse {
  final List<Model>? models;

  LocalModelsResponse({
    this.models,
  });

  LocalModelsResponse copyWith({
    List<Model>? models,
  }) =>
      LocalModelsResponse(
        models: models ?? this.models,
      );

  factory LocalModelsResponse.fromRawJson(String str) => LocalModelsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LocalModelsResponse.fromJson(Map<String, dynamic> json) => LocalModelsResponse(
    models: json["models"] == null ? [] : List<Model>.from(json["models"]!.map((x) => Model.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "models": models == null ? [] : List<dynamic>.from(models!.map((x) => x.toJson())),
  };
}

class Model {
  final String? name;
  final DateTime? modifiedAt;
  final int? size;
  final String? digest;
  final Details? details;

  Model({
    this.name,
    this.modifiedAt,
    this.size,
    this.digest,
    this.details,
  });

  Model copyWith({
    String? name,
    DateTime? modifiedAt,
    int? size,
    String? digest,
    Details? details,
  }) =>
      Model(
        name: name ?? this.name,
        modifiedAt: modifiedAt ?? this.modifiedAt,
        size: size ?? this.size,
        digest: digest ?? this.digest,
        details: details ?? this.details,
      );

  factory Model.fromRawJson(String str) => Model.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    name: json["name"],
    modifiedAt: json["modified_at"] == null ? null : DateTime.parse(json["modified_at"]),
    size: json["size"],
    digest: json["digest"],
    details: json["details"] == null ? null : Details.fromJson(json["details"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "modified_at": modifiedAt?.toIso8601String(),
    "size": size,
    "digest": digest,
    "details": details?.toJson(),
  };
}

class Details {
  final String? format;
  final String? family;
  final dynamic families;
  final String? parameterSize;
  final String? quantizationLevel;

  Details({
    this.format,
    this.family,
    this.families,
    this.parameterSize,
    this.quantizationLevel,
  });

  Details copyWith({
    String? format,
    String? family,
    dynamic families,
    String? parameterSize,
    String? quantizationLevel,
  }) =>
      Details(
        format: format ?? this.format,
        family: family ?? this.family,
        families: families ?? this.families,
        parameterSize: parameterSize ?? this.parameterSize,
        quantizationLevel: quantizationLevel ?? this.quantizationLevel,
      );

  factory Details.fromRawJson(String str) => Details.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Details.fromJson(Map<String, dynamic> json) => Details(
    format: json["format"],
    family: json["family"],
    families: json["families"],
    parameterSize: json["parameter_size"],
    quantizationLevel: json["quantization_level"],
  );

  Map<String, dynamic> toJson() => {
    "format": format,
    "family": family,
    "families": families,
    "parameter_size": parameterSize,
    "quantization_level": quantizationLevel,
  };
}
