part of swagger.api;



class TaskControllerApi {
  final ApiClient apiClient;

  TaskControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get task by id
  ///
  /// 
  Future<BaseSingleObjectResponseDto> getTaskByIdUsingGET(int taskId) async {
    Object postBody = null;

    // verify required params are set
    if(taskId == null) {
     throw new ApiException(400, "Missing required param: taskId");
    }

    // create path and map variables
    String path = "/tasks/{taskId}".replaceAll("{format}","json").replaceAll("{" + "taskId" + "}", taskId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'BaseSingleObjectResponseDto') as BaseSingleObjectResponseDto ;
    } else {
      return null;
    }
  }
  /// Get all tasks by exercise id
  ///
  /// 
  Future<BaseResponseDto> getTasksByExerciseIdUsingGET(int exerciseId) async {
    Object postBody = null;

    // verify required params are set
    if(exerciseId == null) {
     throw new ApiException(400, "Missing required param: exerciseId");
    }

    // create path and map variables
    String path = "/tasks".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "exerciseId", exerciseId));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'BaseResponseDto') as BaseResponseDto ;
    } else {
      return null;
    }
  }
}
