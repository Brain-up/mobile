# swagger.api.AuthenticationControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginUsingPOST**](AuthenticationControllerApi.md#loginUsingPOST) | **POST** /brnlogin | Exist user login
[**registrationUsingPOST**](AuthenticationControllerApi.md#registrationUsingPOST) | **POST** /registration | New user registration

# **loginUsingPOST**
> AuthOutDto loginUsingPOST(body)

Exist user login

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationControllerApi();
var body = new LoginDto(); // LoginDto | loginDto

try {
    var result = api_instance.loginUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling AuthenticationControllerApi->loginUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LoginDto**](LoginDto.md)| loginDto | 

### Return type

[**AuthOutDto**](AuthOutDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registrationUsingPOST**
> AuthOutDto registrationUsingPOST(body)

New user registration

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationControllerApi();
var body = new UserAccountCreateRequest(); // UserAccountCreateRequest | userAccountCreateRequest

try {
    var result = api_instance.registrationUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling AuthenticationControllerApi->registrationUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserAccountCreateRequest**](UserAccountCreateRequest.md)| userAccountCreateRequest | 

### Return type

[**AuthOutDto**](AuthOutDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

