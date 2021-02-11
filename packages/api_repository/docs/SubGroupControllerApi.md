# swagger.api.SubGroupControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllGroupsUsingGET**](SubGroupControllerApi.md#getAllGroupsUsingGET) | **GET** /subgroups | Get subGroups for series id.
[**getSeriesForIdUsingGET1**](SubGroupControllerApi.md#getSeriesForIdUsingGET1) | **GET** /subgroups/{subGroupId} | Get subGroup for id.

# **getAllGroupsUsingGET**
> BaseResponseDto getAllGroupsUsingGET(seriesId)

Get subGroups for series id.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SubGroupControllerApi();
var seriesId = 789; // int | seriesId

try {
    var result = api_instance.getAllGroupsUsingGET(seriesId);
    print(result);
} catch (e) {
    print("Exception when calling SubGroupControllerApi->getAllGroupsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**| seriesId | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeriesForIdUsingGET1**
> BaseSingleObjectResponseDto getSeriesForIdUsingGET1(subGroupId)

Get subGroup for id.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SubGroupControllerApi();
var subGroupId = 789; // int | subGroupId

try {
    var result = api_instance.getSeriesForIdUsingGET1(subGroupId);
    print(result);
} catch (e) {
    print("Exception when calling SubGroupControllerApi->getSeriesForIdUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subGroupId** | **int**| subGroupId | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

