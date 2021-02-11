part of swagger.api;

class UserAccountCreateRequest {
  
  List<String> authorities = [];

  String avatar = null;

  int bornYear = null;

  String email = null;

  String gender = null;
  //enum genderEnum {  MALE,  FEMALE,  };

  String name = null;

  String password = null;

  UserAccountCreateRequest();

  @override
  String toString() {
    return 'UserAccountCreateRequest[authorities=$authorities, avatar=$avatar, bornYear=$bornYear, email=$email, gender=$gender, name=$name, password=$password, ]';
  }

  UserAccountCreateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    authorities = (json['authorities'] as List).map((item) => item as String).toList();
    avatar = json['avatar'];
    bornYear = json['bornYear'];
    email = json['email'];
    gender = json['gender'];
    name = json['name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'authorities': authorities,
      'avatar': avatar,
      'bornYear': bornYear,
      'email': email,
      'gender': gender,
      'name': name,
      'password': password
     };
  }

  static List<UserAccountCreateRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserAccountCreateRequest>() : json.map((value) => new UserAccountCreateRequest.fromJson(value)).toList();
  }

  static Map<String, UserAccountCreateRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserAccountCreateRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserAccountCreateRequest.fromJson(value));
    }
    return map;
  }
}
