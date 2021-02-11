part of swagger.api;

class BaseResponseDto {
  List<Object> data = [];

  List<Object> errors = [];

  List<Object> meta = [];

  BaseResponseDto();

  @override
  String toString() {
    return 'BaseResponseDto[data=$data, errors=$errors, meta=$meta, ]';
  }

  BaseResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    data = (json['data'] as List).map((item) => item as String).toList();
    // Object.listFromJson(json['data']);  // data = List.castFrom(json['data']); Object.listFromJson
    errors = (json['errors'] as List).map((item) => item as String).toList();
    // Object.listFromJson(json['errors']);
    meta = (json['meta'] as List).map((item) => item as String).toList();
    // Object.listFromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    return {'data': data, 'errors': errors, 'meta': meta};
  }

  static List<BaseResponseDto> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<BaseResponseDto>()
        : json.map((value) => new BaseResponseDto.fromJson(value)).toList();
  }

  static Map<String, BaseResponseDto> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BaseResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BaseResponseDto.fromJson(value));
    }
    return map;
  }
}
