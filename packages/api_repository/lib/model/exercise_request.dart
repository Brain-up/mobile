part of swagger.api;

class ExerciseRequest {
  
  List<int> ids = [];

  ExerciseRequest();

  @override
  String toString() {
    return 'ExerciseRequest[ids=$ids, ]';
  }

  ExerciseRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ids = (json['ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'ids': ids
     };
  }

  static List<ExerciseRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExerciseRequest>() : json.map((value) => new ExerciseRequest.fromJson(value)).toList();
  }

  static Map<String, ExerciseRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExerciseRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExerciseRequest.fromJson(value));
    }
    return map;
  }
}
