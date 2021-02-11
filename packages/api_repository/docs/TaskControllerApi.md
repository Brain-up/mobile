# swagger.api.TaskControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTaskByIdUsingGET**](TaskControllerApi.md#getTaskByIdUsingGET) | **GET** /tasks/{taskId} | Get task by id
[**getTasksByExerciseIdUsingGET**](TaskControllerApi.md#getTasksByExerciseIdUsingGET) | **GET** /tasks | Get all tasks by exercise id

# **getTaskByIdUsingGET**
> BaseSingleObjectResponseDto getTaskByIdUsingGET(taskId)

Get task by id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TaskControllerApi();
var taskId = 789; // int | taskId

try {
    var result = api_instance.getTaskByIdUsingGET(taskId);
    print(result);
} catch (e) {
    print("Exception when calling TaskControllerApi->getTaskByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **int**| taskId | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTasksByExerciseIdUsingGET**
> BaseResponseDto getTasksByExerciseIdUsingGET(exerciseId)

Get all tasks by exercise id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TaskControllerApi();
var exerciseId = 789; // int | exerciseId

try {
    var result = api_instance.getTasksByExerciseIdUsingGET(exerciseId);
    print(result);
} catch (e) {
    print("Exception when calling TaskControllerApi->getTasksByExerciseIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exerciseId** | **int**| exerciseId | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

