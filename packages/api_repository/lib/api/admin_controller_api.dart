part of swagger.api;



class AdminControllerApi {
  final ApiClient apiClient;

  AdminControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get user&#x27;s study histories for period
  ///
  /// 
  Future<BaseResponseDto> getHistoriesUsingGET(DateTime from, DateTime to, int userId) async {
    Object postBody = null;

    // verify required params are set
    if(from == null) {
     throw new ApiException(400, "Missing required param: from");
    }
    if(to == null) {
     throw new ApiException(400, "Missing required param: to");
    }
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/admin/histories".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "from", from));
      queryParams.addAll(_convertParametersForCollectionFormat("", "to", to));
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
    
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
  /// Get month user&#x27;s study histories
  ///
  /// 
  Future<BaseResponseDto> getMonthHistoriesUsingGET(int month, int userId, int year) async {
    Object postBody = null;

    // verify required params are set
    if(month == null) {
     throw new ApiException(400, "Missing required param: month");
    }
    if(userId == null) {
     throw new ApiException(400, "Missing required param: userId");
    }
    if(year == null) {
     throw new ApiException(400, "Missing required param: year");
    }

    // create path and map variables
    String path = "/admin/monthHistories".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "month", month));
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
      queryParams.addAll(_convertParametersForCollectionFormat("", "year", year));
    
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
  /// Get users
  ///
  /// 
  Future<BaseResponseDto> getUsersUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/admin/users".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'BaseResponseDto') as BaseResponseDto ;
    } else {
      return null;
    }
  }
}
