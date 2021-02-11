# swagger.api.StudyHistoryControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoriesUsingGET1**](StudyHistoryControllerApi.md#getHistoriesUsingGET1) | **GET** /study-history/histories | Get current user&#x27;s study histories for period
[**getMonthHistoriesUsingGET1**](StudyHistoryControllerApi.md#getMonthHistoriesUsingGET1) | **GET** /study-history/monthHistories | Get month user&#x27;s study histories
[**getTodayWorkDurationInSecondsUsingGET**](StudyHistoryControllerApi.md#getTodayWorkDurationInSecondsUsingGET) | **GET** /study-history/todayTimer | getTodayWorkDurationInSeconds
[**saveUsingPOST**](StudyHistoryControllerApi.md#saveUsingPOST) | **POST** /study-history | save

# **getHistoriesUsingGET1**
> BaseResponseDto getHistoriesUsingGET1(from, to)

Get current user's study histories for period

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new StudyHistoryControllerApi();
var from = 2013-10-20; // DateTime | from
var to = 2013-10-20; // DateTime | to

try {
    var result = api_instance.getHistoriesUsingGET1(from, to);
    print(result);
} catch (e) {
    print("Exception when calling StudyHistoryControllerApi->getHistoriesUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| from | 
 **to** | **DateTime**| to | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonthHistoriesUsingGET1**
> BaseResponseDto getMonthHistoriesUsingGET1(month, year)

Get month user's study histories

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new StudyHistoryControllerApi();
var month = 56; // int | month
var year = 56; // int | year

try {
    var result = api_instance.getMonthHistoriesUsingGET1(month, year);
    print(result);
} catch (e) {
    print("Exception when calling StudyHistoryControllerApi->getMonthHistoriesUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **int**| month | 
 **year** | **int**| year | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTodayWorkDurationInSecondsUsingGET**
> BaseSingleObjectResponseDto getTodayWorkDurationInSecondsUsingGET()

getTodayWorkDurationInSeconds

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new StudyHistoryControllerApi();

try {
    var result = api_instance.getTodayWorkDurationInSecondsUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling StudyHistoryControllerApi->getTodayWorkDurationInSecondsUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveUsingPOST**
> StudyHistoryDto saveUsingPOST(body)

save

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new StudyHistoryControllerApi();
var body = new StudyHistoryDto(); // StudyHistoryDto | studyHistoryDto

try {
    var result = api_instance.saveUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling StudyHistoryControllerApi->saveUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**StudyHistoryDto**](StudyHistoryDto.md)| studyHistoryDto | 

### Return type

[**StudyHistoryDto**](StudyHistoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

