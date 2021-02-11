# swagger.api.ExerciseControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExercisesByIDUsingGET**](ExerciseControllerApi.md#getExercisesByIDUsingGET) | **GET** /exercises/{exerciseId} | Get exercise by id.
[**getExercisesByIdsUsingPOST**](ExerciseControllerApi.md#getExercisesByIdsUsingPOST) | **POST** /exercises/byIds | Get available exercise ids for current user by input ids which have same subGroup.
[**getExercisesBySubGroupUsingGET**](ExerciseControllerApi.md#getExercisesBySubGroupUsingGET) | **GET** /exercises | Get subGroup exercises for current user with availability calculation.

# **getExercisesByIDUsingGET**
> BaseSingleObjectResponseDto getExercisesByIDUsingGET(exerciseId)

Get exercise by id.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ExerciseControllerApi();
var exerciseId = 789; // int | exerciseId

try {
    var result = api_instance.getExercisesByIDUsingGET(exerciseId);
    print(result);
} catch (e) {
    print("Exception when calling ExerciseControllerApi->getExercisesByIDUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exerciseId** | **int**| exerciseId | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExercisesByIdsUsingPOST**
> BaseResponseDto getExercisesByIdsUsingPOST(body)

Get available exercise ids for current user by input ids which have same subGroup.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ExerciseControllerApi();
var body = new ExerciseRequest(); // ExerciseRequest | exerciseRequest

try {
    var result = api_instance.getExercisesByIdsUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling ExerciseControllerApi->getExercisesByIdsUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExerciseRequest**](ExerciseRequest.md)| exerciseRequest | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExercisesBySubGroupUsingGET**
> BaseResponseDto getExercisesBySubGroupUsingGET(subGroupId)

Get subGroup exercises for current user with availability calculation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ExerciseControllerApi();
var subGroupId = 789; // int | subGroupId

try {
    var result = api_instance.getExercisesBySubGroupUsingGET(subGroupId);
    print(result);
} catch (e) {
    print("Exception when calling ExerciseControllerApi->getExercisesBySubGroupUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subGroupId** | **int**| subGroupId | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

