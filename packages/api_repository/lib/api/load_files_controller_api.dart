part of swagger.api;



class LoadFilesControllerApi {
  final ApiClient apiClient;

  LoadFilesControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// loadExercises
  ///
  /// 
  Future<BaseResponseDto> loadExercisesUsingPOST(String taskFile, int seriesId) async {
    Object postBody = null;

    // verify required params are set
    if(taskFile == null) {
     throw new ApiException(400, "Missing required param: taskFile");
    }
    if(seriesId == null) {
     throw new ApiException(400, "Missing required param: seriesId");
    }

    // create path and map variables
    String path = "/loadTasksFile".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "seriesId", seriesId));
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (taskFile != null) {
        hasFields = true;
        mp.fields['taskFile'] = taskFile;

        mp.files.add( MultipartFile.fromString(taskFile, "text/plain; charset=utf-8" ));
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
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
