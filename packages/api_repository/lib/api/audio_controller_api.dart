part of swagger.api;



class AudioControllerApi {
  final ApiClient apiClient;

  AudioControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get audio resource for string
  ///
  /// 
  Future<String> getAudioByteArrayUsingGET(String text, { String locale }) async {
    Object postBody = null;

    // verify required params are set
    if(text == null) {
     throw new ApiException(400, "Missing required param: text");
    }

    // create path and map variables
    String path = "/audio".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(locale != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "locale", locale));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "text", text));
    
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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
}
