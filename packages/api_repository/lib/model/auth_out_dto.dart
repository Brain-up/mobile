part of swagger.api;

class AuthOutDto {
  
  String accessToken = null;

  int expiresIn = null;

  String tokenType = null;

  AuthOutDto();

  @override
  String toString() {
    return 'AuthOutDto[accessToken=$accessToken, expiresIn=$expiresIn, tokenType=$tokenType, ]';
  }

  AuthOutDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
    tokenType = json['token_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'expires_in': expiresIn,
      'token_type': tokenType
     };
  }

  static List<AuthOutDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuthOutDto>() : json.map((value) => new AuthOutDto.fromJson(value)).toList();
  }

  static Map<String, AuthOutDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthOutDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuthOutDto.fromJson(value));
    }
    return map;
  }
}
