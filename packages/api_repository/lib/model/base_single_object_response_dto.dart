part of swagger.api;

class BaseSingleObjectResponseDto {
  
  Object data = null;

  List<Object> errors = [];

  List<Object> meta = [];

  BaseSingleObjectResponseDto();

  @override
  String toString() {
    return 'BaseSingleObjectResponseDto[data=$data, errors=$errors, meta=$meta, ]';
  }

  BaseSingleObjectResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] as List).map((item) => item as String).toList();
    // Object.fromJson(json['data']);
    errors =(json['errors'] as List).map((item) => item as String).toList();
        // Object.listFromJson(json['errors']);
    meta = (json['meta'] as List).map((item) => item as String).toList();
        // Object.listFromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'errors': errors,
      'meta': meta
     };
  }

  static List<BaseSingleObjectResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<BaseSingleObjectResponseDto>() : json.map((value) => new BaseSingleObjectResponseDto.fromJson(value)).toList();
  }

  static Map<String, BaseSingleObjectResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BaseSingleObjectResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BaseSingleObjectResponseDto.fromJson(value));
    }
    return map;
  }
}
