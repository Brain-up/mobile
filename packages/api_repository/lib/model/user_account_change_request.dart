part of swagger.api;

class UserAccountChangeRequest {
  
  String avatar = null;

  int bornYear = null;

  String gender = null;
  //enum genderEnum {  MALE,  FEMALE,  };

  String name = null;

  UserAccountChangeRequest();

  @override
  String toString() {
    return 'UserAccountChangeRequest[avatar=$avatar, bornYear=$bornYear, gender=$gender, name=$name, ]';
  }

  UserAccountChangeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    avatar = json['avatar'];
    bornYear = json['bornYear'];
    gender = json['gender'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'avatar': avatar,
      'bornYear': bornYear,
      'gender': gender,
      'name': name
     };
  }

  static List<UserAccountChangeRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserAccountChangeRequest>() : json.map((value) => new UserAccountChangeRequest.fromJson(value)).toList();
  }

  static Map<String, UserAccountChangeRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserAccountChangeRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserAccountChangeRequest.fromJson(value));
    }
    return map;
  }
}
