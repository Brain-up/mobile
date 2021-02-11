library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/admin_controller_api.dart';
part 'api/audio_controller_api.dart';
part 'api/authentication_controller_api.dart';
part 'api/cloud_controller_api.dart';
part 'api/exercise_controller_api.dart';
part 'api/group_controller_api.dart';
part 'api/load_files_controller_api.dart';
part 'api/series_controller_api.dart';
part 'api/study_history_controller_api.dart';
part 'api/sub_group_controller_api.dart';
part 'api/task_controller_api.dart';
part 'api/user_detail_controller_api.dart';
part 'model/auth_out_dto.dart';
part 'model/base_response_dto.dart';
part 'model/base_single_object_response_dto.dart';
part 'model/body.dart';
part 'model/exercise_request.dart';
part 'model/login_dto.dart';
part 'model/study_history_dto.dart';
part 'model/user_account_change_request.dart';
part 'model/user_account_create_request.dart';

ApiClient defaultApiClient = new ApiClient();
