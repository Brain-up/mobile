# swagger.api.CloudControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**baseFileUrlUsingGET**](CloudControllerApi.md#baseFileUrlUsingGET) | **GET** /cloud/baseFileUrl | Get base file Url
[**bucketUrlUsingGET**](CloudControllerApi.md#bucketUrlUsingGET) | **GET** /cloud/url | Get bucket url
[**listBucketUsingGET**](CloudControllerApi.md#listBucketUsingGET) | **GET** /cloud/folders | Get folders in bucket
[**signatureForClientDirectUploadUsingGET**](CloudControllerApi.md#signatureForClientDirectUploadUsingGET) | **GET** /cloud/upload | Get upload form

# **baseFileUrlUsingGET**
> BaseSingleObjectResponseDto baseFileUrlUsingGET()

Get base file Url

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CloudControllerApi();

try {
    var result = api_instance.baseFileUrlUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling CloudControllerApi->baseFileUrlUsingGET: $e\n");
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

# **bucketUrlUsingGET**
> BaseSingleObjectResponseDto bucketUrlUsingGET()

Get bucket url

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CloudControllerApi();

try {
    var result = api_instance.bucketUrlUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling CloudControllerApi->bucketUrlUsingGET: $e\n");
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

# **listBucketUsingGET**
> BaseSingleObjectResponseDto listBucketUsingGET()

Get folders in bucket

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CloudControllerApi();

try {
    var result = api_instance.listBucketUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling CloudControllerApi->listBucketUsingGET: $e\n");
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

# **signatureForClientDirectUploadUsingGET**
> BaseSingleObjectResponseDto signatureForClientDirectUploadUsingGET(filePath)

Get upload form

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CloudControllerApi();
var filePath = filePath_example; // String | filePath

try {
    var result = api_instance.signatureForClientDirectUploadUsingGET(filePath);
    print(result);
} catch (e) {
    print("Exception when calling CloudControllerApi->signatureForClientDirectUploadUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filePath** | **String**| filePath | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

