part of swagger.api;



class SeriesControllerApi {
  final ApiClient apiClient;

  SeriesControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// getSampleStringForSeriesFile
  ///
  /// 
  Future<BaseSingleObjectResponseDto> getSampleStringForSeriesFileUsingGET(int seriesId) async {
    Object postBody = null;

    // verify required params are set
    if(seriesId == null) {
     throw new ApiException(400, "Missing required param: seriesId");
    }

    // create path and map variables
    String path = "/series/fileFormat/{seriesId}".replaceAll("{format}","json").replaceAll("{" + "seriesId" + "}", seriesId.toString());

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
  /// getSeriesForGroup
  ///
  /// 
  Future<BaseResponseDto> getSeriesForGroupUsingGET(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/series".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupId", groupId));
    
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
  /// getSeriesForId
  ///
  /// 
  Future<BaseSingleObjectResponseDto> getSeriesForIdUsingGET(int seriesId) async {
    Object postBody = null;

    // verify required params are set
    if(seriesId == null) {
     throw new ApiException(400, "Missing required param: seriesId");
    }

    // create path and map variables
    String path = "/series/{seriesId}".replaceAll("{format}","json").replaceAll("{" + "seriesId" + "}", seriesId.toString());

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
}
