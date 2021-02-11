# swagger.api.GroupControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGroupByIdUsingGET**](GroupControllerApi.md#getGroupByIdUsingGET) | **GET** /groups/{groupId} | Get group by id
[**getGroupsUsingGET**](GroupControllerApi.md#getGroupsUsingGET) | **GET** /groups | Get all groups. by locale if it was set.

# **getGroupByIdUsingGET**
> BaseSingleObjectResponseDto getGroupByIdUsingGET(groupId)

Get group by id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupControllerApi();
var groupId = 789; // int | groupId

try {
    var result = api_instance.getGroupByIdUsingGET(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->getGroupByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **int**| groupId | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsUsingGET**
> BaseResponseDto getGroupsUsingGET(locale)

Get all groups. by locale if it was set.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupControllerApi();
var locale = locale_example; // String | locale

try {
    var result = api_instance.getGroupsUsingGET(locale);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->getGroupsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locale** | **String**| locale | [optional] 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

