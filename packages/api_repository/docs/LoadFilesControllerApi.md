# swagger.api.LoadFilesControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loadExercisesUsingPOST**](LoadFilesControllerApi.md#loadExercisesUsingPOST) | **POST** /loadTasksFile | loadExercises

# **loadExercisesUsingPOST**
> BaseResponseDto loadExercisesUsingPOST(taskFile, seriesId)

loadExercises

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new LoadFilesControllerApi();
var taskFile = taskFile_example; // String | 
var seriesId = 789; // int | seriesId

try {
    var result = api_instance.loadExercisesUsingPOST(taskFile, seriesId);
    print(result);
} catch (e) {
    print("Exception when calling LoadFilesControllerApi->loadExercisesUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskFile** | **String****String**|  | 
 **seriesId** | **int**| seriesId | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

