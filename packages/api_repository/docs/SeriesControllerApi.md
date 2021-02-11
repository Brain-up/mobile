# swagger.api.SeriesControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSampleStringForSeriesFileUsingGET**](SeriesControllerApi.md#getSampleStringForSeriesFileUsingGET) | **GET** /series/fileFormat/{seriesId} | getSampleStringForSeriesFile
[**getSeriesForGroupUsingGET**](SeriesControllerApi.md#getSeriesForGroupUsingGET) | **GET** /series | getSeriesForGroup
[**getSeriesForIdUsingGET**](SeriesControllerApi.md#getSeriesForIdUsingGET) | **GET** /series/{seriesId} | getSeriesForId

# **getSampleStringForSeriesFileUsingGET**
> BaseSingleObjectResponseDto getSampleStringForSeriesFileUsingGET(seriesId)

getSampleStringForSeriesFile

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SeriesControllerApi();
var seriesId = 789; // int | seriesId

try {
    var result = api_instance.getSampleStringForSeriesFileUsingGET(seriesId);
    print(result);
} catch (e) {
    print("Exception when calling SeriesControllerApi->getSampleStringForSeriesFileUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**| seriesId | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeriesForGroupUsingGET**
> BaseResponseDto getSeriesForGroupUsingGET(groupId)

getSeriesForGroup

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SeriesControllerApi();
var groupId = 789; // int | groupId

try {
    var result = api_instance.getSeriesForGroupUsingGET(groupId);
    print(result);
} catch (e) {
    print("Exception when calling SeriesControllerApi->getSeriesForGroupUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| groupId | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeriesForIdUsingGET**
> BaseSingleObjectResponseDto getSeriesForIdUsingGET(seriesId)

getSeriesForId

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SeriesControllerApi();
var seriesId = 789; // int | seriesId

try {
    var result = api_instance.getSeriesForIdUsingGET(seriesId);
    print(result);
} catch (e) {
    print("Exception when calling SeriesControllerApi->getSeriesForIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**| seriesId | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

