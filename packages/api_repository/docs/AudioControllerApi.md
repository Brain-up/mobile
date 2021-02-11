# swagger.api.AudioControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAudioByteArrayUsingGET**](AudioControllerApi.md#getAudioByteArrayUsingGET) | **GET** /audio | Get audio resource for string

# **getAudioByteArrayUsingGET**
> String getAudioByteArrayUsingGET(text, locale)

Get audio resource for string

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AudioControllerApi();
var text = text_example; // String | text
var locale = locale_example; // String | locale

try {
    var result = api_instance.getAudioByteArrayUsingGET(text, locale);
    print(result);
} catch (e) {
    print("Exception when calling AudioControllerApi->getAudioByteArrayUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| text | 
 **locale** | **String**| locale | [optional] [default to ru-ru]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

