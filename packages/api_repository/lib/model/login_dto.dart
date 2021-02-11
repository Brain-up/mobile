part of swagger.api;

class LoginDto {
  
  String grantType = null;

  String password = null;

  String username = null;

  LoginDto();

  @override
  String toString() {
    return 'LoginDto[grantType=$grantType, password=$password, username=$username, ]';
  }

  LoginDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    grantType = json['grant_type'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    return {
      'grant_type': grantType,
      'password': password,
      'username': username
     };
  }

  static List<LoginDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginDto>() : json.map((value) => new LoginDto.fromJson(value)).toList();
  }

  static Map<String, LoginDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginDto.fromJson(value));
    }
    return map;
  }
}
