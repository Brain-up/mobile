# swagger.api.AdminControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoriesUsingGET**](AdminControllerApi.md#getHistoriesUsingGET) | **GET** /admin/histories | Get user&#x27;s study histories for period
[**getMonthHistoriesUsingGET**](AdminControllerApi.md#getMonthHistoriesUsingGET) | **GET** /admin/monthHistories | Get month user&#x27;s study histories
[**getUsersUsingGET**](AdminControllerApi.md#getUsersUsingGET) | **GET** /admin/users | Get users

# **getHistoriesUsingGET**
> BaseResponseDto getHistoriesUsingGET(from, to, userId)

Get user's study histories for period

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AdminControllerApi();
var from = 2013-10-20; // DateTime | from
var to = 2013-10-20; // DateTime | to
var userId = 789; // int | userId

try {
    var result = api_instance.getHistoriesUsingGET(from, to, userId);
    print(result);
} catch (e) {
    print("Exception when calling AdminControllerApi->getHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| from | 
 **to** | **DateTime**| to | 
 **userId** | **int**| userId | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonthHistoriesUsingGET**
> BaseResponseDto getMonthHistoriesUsingGET(month, userId, year)

Get month user's study histories

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AdminControllerApi();
var month = 56; // int | month
var userId = 789; // int | userId
var year = 56; // int | year

try {
    var result = api_instance.getMonthHistoriesUsingGET(month, userId, year);
    print(result);
} catch (e) {
    print("Exception when calling AdminControllerApi->getMonthHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **int**| month | 
 **userId** | **int**| userId | 
 **year** | **int**| year | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersUsingGET**
> BaseResponseDto getUsersUsingGET()

Get users

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AdminControllerApi();

try {
    var result = api_instance.getUsersUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling AdminControllerApi->getUsersUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

