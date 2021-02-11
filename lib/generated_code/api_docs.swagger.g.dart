// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_docs.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthOutDto _$AuthOutDtoFromJson(Map<String, dynamic> json) {
  return AuthOutDto(
    accessToken: json['access_token'] as String,
    expiresIn: json['expires_in'] as int,
    tokenType: json['token_type'] as String,
  );
}

Map<String, dynamic> _$AuthOutDtoToJson(AuthOutDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_token', instance.accessToken);
  writeNotNull('expires_in', instance.expiresIn);
  writeNotNull('token_type', instance.tokenType);
  return val;
}

BaseResponseDto _$BaseResponseDtoFromJson(Map<String, dynamic> json) {
  return BaseResponseDto(
    data: json['data'] as List ?? [],
    errors: json['errors'] as List ?? [],
    meta: json['meta'] as List ?? [],
  );
}

Map<String, dynamic> _$BaseResponseDtoToJson(BaseResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('errors', instance.errors);
  writeNotNull('meta', instance.meta);
  return val;
}

BaseSingleObjectResponseDto _$BaseSingleObjectResponseDtoFromJson(
    Map<String, dynamic> json) {
  return BaseSingleObjectResponseDto(
    data: json['data'],
    errors: json['errors'] as List ?? [],
    meta: json['meta'] as List ?? [],
  );
}

Map<String, dynamic> _$BaseSingleObjectResponseDtoToJson(
    BaseSingleObjectResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('errors', instance.errors);
  writeNotNull('meta', instance.meta);
  return val;
}

ExerciseRequest _$ExerciseRequestFromJson(Map<String, dynamic> json) {
  return ExerciseRequest(
    ids: (json['ids'] as List)?.map((e) => e as int)?.toList() ?? [],
  );
}

Map<String, dynamic> _$ExerciseRequestToJson(ExerciseRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ids', instance.ids);
  return val;
}

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return LoginDto(
    grantType: json['grant_type'] as String,
    password: json['password'] as String,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('grant_type', instance.grantType);
  writeNotNull('password', instance.password);
  writeNotNull('username', instance.username);
  return val;
}

StudyHistoryDto _$StudyHistoryDtoFromJson(Map<String, dynamic> json) {
  return StudyHistoryDto(
    endTime: json['endTime'] == null
        ? null
        : DateTime.parse(json['endTime'] as String),
    executionSeconds: json['executionSeconds'] as int,
    exerciseId: json['exerciseId'] as int,
    id: json['id'] as int,
    replaysCount: json['replaysCount'] as int,
    startTime: json['startTime'] == null
        ? null
        : DateTime.parse(json['startTime'] as String),
    tasksCount: json['tasksCount'] as int,
    wrongAnswers: json['wrongAnswers'] as int,
  );
}

Map<String, dynamic> _$StudyHistoryDtoToJson(StudyHistoryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('endTime', instance.endTime?.toIso8601String());
  writeNotNull('executionSeconds', instance.executionSeconds);
  writeNotNull('exerciseId', instance.exerciseId);
  writeNotNull('id', instance.id);
  writeNotNull('replaysCount', instance.replaysCount);
  writeNotNull('startTime', instance.startTime?.toIso8601String());
  writeNotNull('tasksCount', instance.tasksCount);
  writeNotNull('wrongAnswers', instance.wrongAnswers);
  return val;
}

UserAccountChangeRequest _$UserAccountChangeRequestFromJson(
    Map<String, dynamic> json) {
  return UserAccountChangeRequest(
    avatar: json['avatar'] as String,
    bornYear: json['bornYear'] as int,
    gender: userAccountChangeRequestGenderFromJson(json['gender'] as String),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$UserAccountChangeRequestToJson(
    UserAccountChangeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  writeNotNull('bornYear', instance.bornYear);
  writeNotNull('gender', userAccountChangeRequestGenderToJson(instance.gender));
  writeNotNull('name', instance.name);
  return val;
}

UserAccountCreateRequest _$UserAccountCreateRequestFromJson(
    Map<String, dynamic> json) {
  return UserAccountCreateRequest(
    authorities:
        (json['authorities'] as List)?.map((e) => e as String)?.toList() ?? [],
    avatar: json['avatar'] as String,
    bornYear: json['bornYear'] as int,
    email: json['email'] as String,
    gender: userAccountCreateRequestGenderFromJson(json['gender'] as String),
    name: json['name'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UserAccountCreateRequestToJson(
    UserAccountCreateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authorities', instance.authorities);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('bornYear', instance.bornYear);
  writeNotNull('email', instance.email);
  writeNotNull('gender', userAccountCreateRequestGenderToJson(instance.gender));
  writeNotNull('name', instance.name);
  writeNotNull('password', instance.password);
  return val;
}
