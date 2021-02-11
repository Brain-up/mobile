part of swagger.api;

class Body {
  /* taskFile */
  String taskFile = null;

  Body();

  @override
  String toString() {
    return 'Body[taskFile=$taskFile, ]';
  }

  Body.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    taskFile = json['taskFile'];
  }

  Map<String, dynamic> toJson() {
    return {
      'taskFile': taskFile
     };
  }

  static List<Body> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body>() : json.map((value) => new Body.fromJson(value)).toList();
  }

  static Map<String, Body> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body.fromJson(value));
    }
    return map;
  }
}
