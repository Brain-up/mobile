// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_docs.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiDocs extends ApiDocs {
  _$ApiDocs([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiDocs;

  @override
  Future<Response<BaseResponseDto>> getHistoriesUsingGet(
      {String from, String to, int userId}) {
    final $url = '/admin/histories';
    final $params = <String, dynamic>{'from': from, 'to': to, 'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getMonthHistoriesUsingGet(
      {int month, int userId, int year}) {
    final $url = '/admin/monthHistories';
    final $params = <String, dynamic>{
      'month': month,
      'userId': userId,
      'year': year
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getUsersUsingGet() {
    final $url = '/admin/users';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<String>> getAudioByteArrayUsingGet(
      {String locale, String text}) {
    final $url = '/audio';
    final $params = <String, dynamic>{'locale': locale, 'text': text};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AuthOutDto>> loginUsingPost({LoginDto loginDto}) {
    final $url = '/brnlogin';
    final $body = loginDto;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AuthOutDto, AuthOutDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> baseFileUrlUsingGet() {
    final $url = '/cloud/baseFileUrl';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> listBucketUsingGet() {
    final $url = '/cloud/folders';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>>
      signatureForClientDirectUploadUsingGet({String filePath}) {
    final $url = '/cloud/upload';
    final $params = <String, dynamic>{'filePath': filePath};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> bucketUrlUsingGet() {
    final $url = '/cloud/url';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getExercisesBySubGroupUsingGet(
      {int subGroupId}) {
    final $url = '/exercises';
    final $params = <String, dynamic>{'subGroupId': subGroupId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getExercisesByIdsUsingPost(
      {ExerciseRequest exerciseRequest}) {
    final $url = '/exercises/byIds';
    final $body = exerciseRequest;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> getExercisesByIdusingGet(
      {int exerciseId}) {
    final $url = '/exercises/$exerciseId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getGroupsUsingGet({String locale}) {
    final $url = '/groups';
    final $params = <String, dynamic>{'locale': locale};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> getGroupByIdUsingGet(
      {int groupId}) {
    final $url = '/groups/$groupId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> loadExercisesUsingPost(
      {int seriesId, List<int> taskFile}) {
    final $url = '/loadTasksFile';
    final $params = <String, dynamic>{'seriesId': seriesId};
    final $body = <String, dynamic>{'taskFile': taskFile};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<AuthOutDto>> registrationUsingPost(
      {UserAccountCreateRequest userAccountCreateRequest}) {
    final $url = '/registration';
    final $body = userAccountCreateRequest;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AuthOutDto, AuthOutDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getSeriesForGroupUsingGet({int groupId}) {
    final $url = '/series';
    final $params = <String, dynamic>{'groupId': groupId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>>
      getSampleStringForSeriesFileUsingGet({int seriesId}) {
    final $url = '/series/fileFormat/$seriesId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> getSeriesForIdUsingGet(
      {int seriesId}) {
    final $url = '/series/$seriesId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<StudyHistoryDto>> saveUsingPost(
      {StudyHistoryDto studyHistoryDto}) {
    final $url = '/study-history';
    final $body = studyHistoryDto;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<StudyHistoryDto, StudyHistoryDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getHistoriesUsingGet1(
      {String from, String to}) {
    final $url = '/study-history/histories';
    final $params = <String, dynamic>{'from': from, 'to': to};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getMonthHistoriesUsingGet1(
      {int month, int year}) {
    final $url = '/study-history/monthHistories';
    final $params = <String, dynamic>{'month': month, 'year': year};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>>
      getTodayWorkDurationInSecondsUsingGet() {
    final $url = '/study-history/todayTimer';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getAllGroupsUsingGet({int seriesId}) {
    final $url = '/subgroups';
    final $params = <String, dynamic>{'seriesId': seriesId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> getSeriesForIdUsingGet1(
      {int subGroupId}) {
    final $url = '/subgroups/$subGroupId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getTasksByExerciseIdUsingGet(
      {int exerciseId}) {
    final $url = '/tasks';
    final $params = <String, dynamic>{'exerciseId': exerciseId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> getTaskByIdUsingGet(
      {int taskId}) {
    final $url = '/tasks/$taskId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> findUserByNameUsingGet({String name}) {
    final $url = '/users';
    final $params = <String, dynamic>{'name': name};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> getCurrentUserUsingGet() {
    final $url = '/users/current';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> updateCurrentUserUsingPatch(
      {UserAccountChangeRequest userAccountChangeRequest}) {
    final $url = '/users/current';
    final $body = userAccountChangeRequest;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseSingleObjectResponseDto>> updateAvatarCurrentUserUsingPut(
      {String avatar}) {
    final $url = '/users/current/avatar';
    final $params = <String, dynamic>{'avatar': avatar};
    final $request = Request('PUT', $url, client.baseUrl, parameters: $params);
    return client.send<BaseSingleObjectResponseDto,
        BaseSingleObjectResponseDto>($request);
  }

  @override
  Future<Response<BaseResponseDto>> findUserByIdUsingGet({int userId}) {
    final $url = '/users/$userId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseResponseDto, BaseResponseDto>($request);
  }
}
