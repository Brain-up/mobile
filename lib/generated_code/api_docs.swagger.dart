import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/widgets.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'api_docs.enums.swagger.dart' as enums;
export 'api_docs.enums.swagger.dart';

part 'api_docs.swagger.chopper.dart';
part 'api_docs.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ApiDocs extends ChopperService {
  static ApiDocs create([ChopperClient client]) {
    if (client != null) {
      return _$ApiDocs(client);
    }

    final newClient = ChopperClient(
        services: [_$ApiDocs()],
        converter: JsonSerializableConverter(),
        baseUrl: 'http://brainup.site/api/v2');
    ///https://brn:8081/api
    return _$ApiDocs(newClient);
  }

  ///Get user's study histories for period
  ///@param from from
  ///@param to to
  ///@param userId userId

  @Get(path: '/admin/histories')
  Future<chopper.Response<BaseResponseDto>> getHistoriesUsingGet(
      {@Query('from') @required String from,
      @Query('to') @required String to,
      @Query('userId') @required int userId});

  ///Get month user's study histories
  ///@param month month
  ///@param userId userId
  ///@param year year

  @Get(path: '/admin/monthHistories')
  Future<chopper.Response<BaseResponseDto>> getMonthHistoriesUsingGet(
      {@Query('month') @required int month,
      @Query('userId') @required int userId,
      @Query('year') @required int year});

  ///Get users

  @Get(path: '/admin/users')
  Future<chopper.Response<BaseResponseDto>> getUsersUsingGet();

  ///Get audio resource for string
  ///@param locale locale
  ///@param text text

  @Get(path: '/audio')
  Future<chopper.Response<String>> getAudioByteArrayUsingGet(
      {@Query('locale') String locale, @Query('text') @required String text});

  ///Exist user login
  ///@param loginDto loginDto

  @Post(path: '/brnlogin')
  Future<chopper.Response<AuthOutDto>> loginUsingPost(
      {@Body() @required LoginDto loginDto});

  ///Get base file Url

  @Get(path: '/cloud/baseFileUrl')
  Future<chopper.Response<BaseSingleObjectResponseDto>> baseFileUrlUsingGet();

  ///Get folders in bucket

  @Get(path: '/cloud/folders')
  Future<chopper.Response<BaseSingleObjectResponseDto>> listBucketUsingGet();

  ///Get upload form
  ///@param filePath filePath

  @Get(path: '/cloud/upload')
  Future<chopper.Response<BaseSingleObjectResponseDto>>
      signatureForClientDirectUploadUsingGet(
          {@Query('filePath') @required String filePath});

  ///Get bucket url

  @Get(path: '/cloud/url')
  Future<chopper.Response<BaseSingleObjectResponseDto>> bucketUrlUsingGet();

  ///Get subGroup exercises for current user with availability calculation.
  ///@param subGroupId subGroupId

  @Get(path: '/exercises')
  Future<chopper.Response<BaseResponseDto>> getExercisesBySubGroupUsingGet(
      {@Query('subGroupId') @required int subGroupId});

  ///Get available exercise ids for current user by input ids which have same subGroup.
  ///@param exerciseRequest exerciseRequest

  @Post(path: '/exercises/byIds')
  Future<chopper.Response<BaseResponseDto>> getExercisesByIdsUsingPost(
      {@Body() @required ExerciseRequest exerciseRequest});

  ///Get exercise by id.
  ///@param exerciseId exerciseId

  @Get(path: '/exercises/{exerciseId}')
  Future<chopper.Response<BaseSingleObjectResponseDto>>
      getExercisesByIdusingGet({@Path('exerciseId') @required int exerciseId});

  ///Get all groups. by locale if it was set.
  ///@param locale locale

  @Get(path: '/groups')
  Future<chopper.Response<BaseResponseDto>> getGroupsUsingGet(
      {@Query('locale') String locale});

  ///Get group by id
  ///@param groupId groupId

  @Get(path: '/groups/{groupId}')
  Future<chopper.Response<BaseSingleObjectResponseDto>> getGroupByIdUsingGet(
      {@Path('groupId') @required int groupId});

  ///loadExercises
  ///@param seriesId seriesId
  ///@param taskFile taskFile

  @Post(path: '/loadTasksFile')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<chopper.Response<BaseResponseDto>> loadExercisesUsingPost(
      {@Query('seriesId') @required int seriesId,
      @Field('taskFile') @required List<int> taskFile});

  ///New user registration
  ///@param userAccountCreateRequest userAccountCreateRequest

  @Post(path: '/registration')
  Future<chopper.Response<AuthOutDto>> registrationUsingPost(
      {@Body() @required UserAccountCreateRequest userAccountCreateRequest});

  ///getSeriesForGroup
  ///@param groupId groupId

  @Get(path: '/series')
  Future<chopper.Response<BaseResponseDto>> getSeriesForGroupUsingGet(
      {@Query('groupId') @required int groupId});

  ///getSampleStringForSeriesFile
  ///@param seriesId seriesId

  @Get(path: '/series/fileFormat/{seriesId}')
  Future<chopper.Response<BaseSingleObjectResponseDto>>
      getSampleStringForSeriesFileUsingGet(
          {@Path('seriesId') @required int seriesId});

  ///getSeriesForId
  ///@param seriesId seriesId

  @Get(path: '/series/{seriesId}')
  Future<chopper.Response<BaseSingleObjectResponseDto>> getSeriesForIdUsingGet(
      {@Path('seriesId') @required int seriesId});

  ///save
  ///@param studyHistoryDto studyHistoryDto

  @Post(path: '/study-history')
  Future<chopper.Response<StudyHistoryDto>> saveUsingPost(
      {@Body() @required StudyHistoryDto studyHistoryDto});

  ///Get current user's study histories for period
  ///@param from from
  ///@param to to

  @Get(path: '/study-history/histories')
  Future<chopper.Response<BaseResponseDto>> getHistoriesUsingGet1(
      {@Query('from') @required String from, @Query('to') @required String to});

  ///Get month user's study histories
  ///@param month month
  ///@param year year

  @Get(path: '/study-history/monthHistories')
  Future<chopper.Response<BaseResponseDto>> getMonthHistoriesUsingGet1(
      {@Query('month') @required int month, @Query('year') @required int year});

  ///getTodayWorkDurationInSeconds

  @Get(path: '/study-history/todayTimer')
  Future<chopper.Response<BaseSingleObjectResponseDto>>
      getTodayWorkDurationInSecondsUsingGet();

  ///Get subGroups for series id.
  ///@param seriesId seriesId

  @Get(path: '/subgroups')
  Future<chopper.Response<BaseResponseDto>> getAllGroupsUsingGet(
      {@Query('seriesId') @required int seriesId});

  ///Get subGroup for id.
  ///@param subGroupId subGroupId

  @Get(path: '/subgroups/{subGroupId}')
  Future<chopper.Response<BaseSingleObjectResponseDto>> getSeriesForIdUsingGet1(
      {@Path('subGroupId') @required int subGroupId});

  ///Get all tasks by exercise id
  ///@param exerciseId exerciseId

  @Get(path: '/tasks')
  Future<chopper.Response<BaseResponseDto>> getTasksByExerciseIdUsingGet(
      {@Query('exerciseId') @required int exerciseId});

  ///Get task by id
  ///@param taskId taskId

  @Get(path: '/tasks/{taskId}')
  Future<chopper.Response<BaseSingleObjectResponseDto>> getTaskByIdUsingGet(
      {@Path('taskId') @required int taskId});

  ///Get user by name
  ///@param name name

  @Get(path: '/users')
  Future<chopper.Response<BaseResponseDto>> findUserByNameUsingGet(
      {@Query('name') @required String name});

  ///Get current logged in user

  @Get(path: '/users/current')
  Future<chopper.Response<BaseResponseDto>> getCurrentUserUsingGet();

  ///Update current logged in user
  ///@param userAccountChangeRequest userAccountChangeRequest

  @Patch(path: '/users/current')
  Future<chopper.Response<BaseSingleObjectResponseDto>>
      updateCurrentUserUsingPatch(
          {@Body()
          @required
              UserAccountChangeRequest userAccountChangeRequest});

  ///Update avatar current user
  ///@param avatar avatar

  @Put(path: '/users/current/avatar')
  Future<chopper.Response<BaseSingleObjectResponseDto>>
      updateAvatarCurrentUserUsingPut(
          {@Query('avatar') @required String avatar});

  ///Get user by Id
  ///@param userId userId

  @Get(path: '/users/{userId}')
  Future<chopper.Response<BaseResponseDto>> findUserByIdUsingGet(
      {@Path('userId') @required int userId});
}

final Map<Type, Object Function(Map<String, dynamic>)>
    ApiDocsJsonDecoderMappings = {
  AuthOutDto: AuthOutDto.fromJsonFactory,
  BaseResponseDto: BaseResponseDto.fromJsonFactory,
  BaseSingleObjectResponseDto: BaseSingleObjectResponseDto.fromJsonFactory,
  ExerciseRequest: ExerciseRequest.fromJsonFactory,
  LoginDto: LoginDto.fromJsonFactory,
  StudyHistoryDto: StudyHistoryDto.fromJsonFactory,
  UserAccountChangeRequest: UserAccountChangeRequest.fromJsonFactory,
  UserAccountCreateRequest: UserAccountCreateRequest.fromJsonFactory,
};

@JsonSerializable(explicitToJson: true)
class AuthOutDto {
  AuthOutDto({
    this.accessToken,
    this.expiresIn,
    this.tokenType,
  });

  factory AuthOutDto.fromJson(Map<String, dynamic> json) =>
      _$AuthOutDtoFromJson(json);

  @JsonKey(name: 'access_token', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'expires_in', includeIfNull: false)
  final int expiresIn;
  @JsonKey(name: 'token_type', includeIfNull: false)
  final String tokenType;
  static const fromJsonFactory = _$AuthOutDtoFromJson;
  static const toJsonFactory = _$AuthOutDtoToJson;
  Map<String, dynamic> toJson() => _$AuthOutDtoToJson(this);
}

extension $AuthOutDtoExtension on AuthOutDto {
  AuthOutDto copyWith({String accessToken, int expiresIn, String tokenType}) {
    return AuthOutDto(
        accessToken: accessToken ?? this.accessToken,
        expiresIn: expiresIn ?? this.expiresIn,
        tokenType: tokenType ?? this.tokenType);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseResponseDto {
  BaseResponseDto({
    this.data,
    this.errors,
    this.meta,
  });

  factory BaseResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseDtoFromJson(json);

  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> data;
  @JsonKey(name: 'errors', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> errors;
  @JsonKey(name: 'meta', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> meta;
  static const fromJsonFactory = _$BaseResponseDtoFromJson;
  static const toJsonFactory = _$BaseResponseDtoToJson;
  Map<String, dynamic> toJson() => _$BaseResponseDtoToJson(this);
}

extension $BaseResponseDtoExtension on BaseResponseDto {
  BaseResponseDto copyWith(
      {List<Object> data, List<Object> errors, List<Object> meta}) {
    return BaseResponseDto(
        data: data ?? this.data,
        errors: errors ?? this.errors,
        meta: meta ?? this.meta);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseSingleObjectResponseDto {
  BaseSingleObjectResponseDto({
    this.data,
    this.errors,
    this.meta,
  });

  factory BaseSingleObjectResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BaseSingleObjectResponseDtoFromJson(json);

  @JsonKey(name: 'data', includeIfNull: false)
  final Object data;
  @JsonKey(name: 'errors', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> errors;
  @JsonKey(name: 'meta', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> meta;
  static const fromJsonFactory = _$BaseSingleObjectResponseDtoFromJson;
  static const toJsonFactory = _$BaseSingleObjectResponseDtoToJson;
  Map<String, dynamic> toJson() => _$BaseSingleObjectResponseDtoToJson(this);
}

extension $BaseSingleObjectResponseDtoExtension on BaseSingleObjectResponseDto {
  BaseSingleObjectResponseDto copyWith(
      {Object data, List<Object> errors, List<Object> meta}) {
    return BaseSingleObjectResponseDto(
        data: data ?? this.data,
        errors: errors ?? this.errors,
        meta: meta ?? this.meta);
  }
}

@JsonSerializable(explicitToJson: true)
class ExerciseRequest {
  ExerciseRequest({
    this.ids,
  });

  factory ExerciseRequest.fromJson(Map<String, dynamic> json) =>
      _$ExerciseRequestFromJson(json);

  @JsonKey(name: 'ids', includeIfNull: false, defaultValue: <int>[])
  final List<int> ids;
  static const fromJsonFactory = _$ExerciseRequestFromJson;
  static const toJsonFactory = _$ExerciseRequestToJson;
  Map<String, dynamic> toJson() => _$ExerciseRequestToJson(this);
}

extension $ExerciseRequestExtension on ExerciseRequest {
  ExerciseRequest copyWith({List<int> ids}) {
    return ExerciseRequest(ids: ids ?? this.ids);
  }
}

@JsonSerializable(explicitToJson: true)
class LoginDto {
  LoginDto({
    this.grantType,
    this.password,
    this.username,
  });

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  @JsonKey(name: 'grant_type', includeIfNull: false)
  final String grantType;
  @JsonKey(name: 'password', includeIfNull: false)
  final String password;
  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  static const fromJsonFactory = _$LoginDtoFromJson;
  static const toJsonFactory = _$LoginDtoToJson;
  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}

extension $LoginDtoExtension on LoginDto {
  LoginDto copyWith({String grantType, String password, String username}) {
    return LoginDto(
        grantType: grantType ?? this.grantType,
        password: password ?? this.password,
        username: username ?? this.username);
  }
}

@JsonSerializable(explicitToJson: true)
class StudyHistoryDto {
  StudyHistoryDto({
    this.endTime,
    this.executionSeconds,
    this.exerciseId,
    this.id,
    this.replaysCount,
    this.startTime,
    this.tasksCount,
    this.wrongAnswers,
  });

  factory StudyHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$StudyHistoryDtoFromJson(json);

  @JsonKey(name: 'endTime', includeIfNull: false)
  final DateTime endTime;
  @JsonKey(name: 'executionSeconds', includeIfNull: false)
  final int executionSeconds;
  @JsonKey(name: 'exerciseId', includeIfNull: false)
  final int exerciseId;
  @JsonKey(name: 'id', includeIfNull: false)
  final int id;
  @JsonKey(name: 'replaysCount', includeIfNull: false)
  final int replaysCount;
  @JsonKey(name: 'startTime', includeIfNull: false)
  final DateTime startTime;
  @JsonKey(name: 'tasksCount', includeIfNull: false)
  final int tasksCount;
  @JsonKey(name: 'wrongAnswers', includeIfNull: false)
  final int wrongAnswers;
  static const fromJsonFactory = _$StudyHistoryDtoFromJson;
  static const toJsonFactory = _$StudyHistoryDtoToJson;
  Map<String, dynamic> toJson() => _$StudyHistoryDtoToJson(this);
}

extension $StudyHistoryDtoExtension on StudyHistoryDto {
  StudyHistoryDto copyWith(
      {DateTime endTime,
      int executionSeconds,
      int exerciseId,
      int id,
      int replaysCount,
      DateTime startTime,
      int tasksCount,
      int wrongAnswers}) {
    return StudyHistoryDto(
        endTime: endTime ?? this.endTime,
        executionSeconds: executionSeconds ?? this.executionSeconds,
        exerciseId: exerciseId ?? this.exerciseId,
        id: id ?? this.id,
        replaysCount: replaysCount ?? this.replaysCount,
        startTime: startTime ?? this.startTime,
        tasksCount: tasksCount ?? this.tasksCount,
        wrongAnswers: wrongAnswers ?? this.wrongAnswers);
  }
}

@JsonSerializable(explicitToJson: true)
class UserAccountChangeRequest {
  UserAccountChangeRequest({
    this.avatar,
    this.bornYear,
    this.gender,
    this.name,
  });

  factory UserAccountChangeRequest.fromJson(Map<String, dynamic> json) =>
      _$UserAccountChangeRequestFromJson(json);

  @JsonKey(name: 'avatar', includeIfNull: false)
  final String avatar;
  @JsonKey(name: 'bornYear', includeIfNull: false)
  final int bornYear;
  @JsonKey(
      name: 'gender',
      includeIfNull: false,
      toJson: userAccountChangeRequestGenderToJson,
      fromJson: userAccountChangeRequestGenderFromJson)
  final enums.UserAccountChangeRequestGender gender;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  static const fromJsonFactory = _$UserAccountChangeRequestFromJson;
  static const toJsonFactory = _$UserAccountChangeRequestToJson;
  Map<String, dynamic> toJson() => _$UserAccountChangeRequestToJson(this);
}

extension $UserAccountChangeRequestExtension on UserAccountChangeRequest {
  UserAccountChangeRequest copyWith(
      {String avatar,
      int bornYear,
      enums.UserAccountChangeRequestGender gender,
      String name}) {
    return UserAccountChangeRequest(
        avatar: avatar ?? this.avatar,
        bornYear: bornYear ?? this.bornYear,
        gender: gender ?? this.gender,
        name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class UserAccountCreateRequest {
  UserAccountCreateRequest({
    this.authorities,
    this.avatar,
    this.bornYear,
    this.email,
    this.gender,
    this.name,
    this.password,
  });

  factory UserAccountCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$UserAccountCreateRequestFromJson(json);

  @JsonKey(name: 'authorities', includeIfNull: false, defaultValue: <String>[])
  final List<String> authorities;
  @JsonKey(name: 'avatar', includeIfNull: false)
  final String avatar;
  @JsonKey(name: 'bornYear', includeIfNull: false)
  final int bornYear;
  @JsonKey(name: 'email', includeIfNull: false)
  final String email;
  @JsonKey(
      name: 'gender',
      includeIfNull: false,
      toJson: userAccountCreateRequestGenderToJson,
      fromJson: userAccountCreateRequestGenderFromJson)
  final enums.UserAccountCreateRequestGender gender;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'password', includeIfNull: false)
  final String password;
  static const fromJsonFactory = _$UserAccountCreateRequestFromJson;
  static const toJsonFactory = _$UserAccountCreateRequestToJson;
  Map<String, dynamic> toJson() => _$UserAccountCreateRequestToJson(this);
}

extension $UserAccountCreateRequestExtension on UserAccountCreateRequest {
  UserAccountCreateRequest copyWith(
      {List<String> authorities,
      String avatar,
      int bornYear,
      String email,
      enums.UserAccountCreateRequestGender gender,
      String name,
      String password}) {
    return UserAccountCreateRequest(
        authorities: authorities ?? this.authorities,
        avatar: avatar ?? this.avatar,
        bornYear: bornYear ?? this.bornYear,
        email: email ?? this.email,
        gender: gender ?? this.gender,
        name: name ?? this.name,
        password: password ?? this.password);
  }
}

String userAccountChangeRequestGenderToJson(
    enums.UserAccountChangeRequestGender userAccountChangeRequestGender) {
  return enums
      .$UserAccountChangeRequestGenderMap[userAccountChangeRequestGender];
}

enums.UserAccountChangeRequestGender userAccountChangeRequestGenderFromJson(
    String userAccountChangeRequestGender) {
  if (userAccountChangeRequestGender == null) {
    return enums.UserAccountChangeRequestGender.swaggerGeneratedUnknown;
  }

  return enums.$UserAccountChangeRequestGenderMap.entries
          .firstWhere(
              (element) =>
                  element.value.toLowerCase() ==
                  userAccountChangeRequestGender.toLowerCase(),
              orElse: () => null)
          ?.key ??
      enums.UserAccountChangeRequestGender.swaggerGeneratedUnknown;
}

List<String> userAccountChangeRequestGenderListToJson(
    List<enums.UserAccountChangeRequestGender> userAccountChangeRequestGender) {
  if (userAccountChangeRequestGender == null) {
    return null;
  }

  return userAccountChangeRequestGender
      .map((e) => enums.$UserAccountChangeRequestGenderMap[e])
      .toList();
}

List<enums.UserAccountChangeRequestGender>
    userAccountChangeRequestGenderListFromJson(
        List userAccountChangeRequestGender) {
  if (userAccountChangeRequestGender == null) {
    return [];
  }

  return userAccountChangeRequestGender
      .map((e) => userAccountChangeRequestGenderFromJson(e.toString()))
      .toList();
}

String userAccountCreateRequestGenderToJson(
    enums.UserAccountCreateRequestGender userAccountCreateRequestGender) {
  return enums
      .$UserAccountCreateRequestGenderMap[userAccountCreateRequestGender];
}

enums.UserAccountCreateRequestGender userAccountCreateRequestGenderFromJson(
    String userAccountCreateRequestGender) {
  if (userAccountCreateRequestGender == null) {
    return enums.UserAccountCreateRequestGender.swaggerGeneratedUnknown;
  }

  return enums.$UserAccountCreateRequestGenderMap.entries
          .firstWhere(
              (element) =>
                  element.value.toLowerCase() ==
                  userAccountCreateRequestGender.toLowerCase(),
              orElse: () => null)
          ?.key ??
      enums.UserAccountCreateRequestGender.swaggerGeneratedUnknown;
}

List<String> userAccountCreateRequestGenderListToJson(
    List<enums.UserAccountCreateRequestGender> userAccountCreateRequestGender) {
  if (userAccountCreateRequestGender == null) {
    return null;
  }

  return userAccountCreateRequestGender
      .map((e) => enums.$UserAccountCreateRequestGenderMap[e])
      .toList();
}

List<enums.UserAccountCreateRequestGender>
    userAccountCreateRequestGenderListFromJson(
        List userAccountCreateRequestGender) {
  if (userAccountCreateRequestGender == null) {
    return [];
  }

  return userAccountCreateRequestGender
      .map((e) => userAccountCreateRequestGenderFromJson(e.toString()))
      .toList();
}

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonDecoder {
  CustomJsonDecoder(this.factories);

  final Map<Type, JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values) as T;
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final jsonDecoder = CustomJsonDecoder(ApiDocsJsonDecoderMappings);
