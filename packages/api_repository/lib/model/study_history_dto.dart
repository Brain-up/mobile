part of swagger.api;

class StudyHistoryDto {
  
  DateTime endTime = null;

  int executionSeconds = null;

  int exerciseId = null;

  int id = null;

  int replaysCount = null;

  DateTime startTime = null;

  int tasksCount = null;

  int wrongAnswers = null;

  StudyHistoryDto();

  @override
  String toString() {
    return 'StudyHistoryDto[endTime=$endTime, executionSeconds=$executionSeconds, exerciseId=$exerciseId, id=$id, replaysCount=$replaysCount, startTime=$startTime, tasksCount=$tasksCount, wrongAnswers=$wrongAnswers, ]';
  }

  StudyHistoryDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
    executionSeconds = json['executionSeconds'];
    exerciseId = json['exerciseId'];
    id = json['id'];
    replaysCount = json['replaysCount'];
    startTime = json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    tasksCount = json['tasksCount'];
    wrongAnswers = json['wrongAnswers'];
  }

  Map<String, dynamic> toJson() {
    return {
      'endTime': endTime == null ? '' : endTime.toUtc().toIso8601String(),
      'executionSeconds': executionSeconds,
      'exerciseId': exerciseId,
      'id': id,
      'replaysCount': replaysCount,
      'startTime': startTime == null ? '' : startTime.toUtc().toIso8601String(),
      'tasksCount': tasksCount,
      'wrongAnswers': wrongAnswers
     };
  }

  static List<StudyHistoryDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<StudyHistoryDto>() : json.map((value) => new StudyHistoryDto.fromJson(value)).toList();
  }

  static Map<String, StudyHistoryDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StudyHistoryDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StudyHistoryDto.fromJson(value));
    }
    return map;
  }
}
