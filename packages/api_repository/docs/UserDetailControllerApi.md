# swagger.api.UserDetailControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *//brn:8081/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findUserByIdUsingGET**](UserDetailControllerApi.md#findUserByIdUsingGET) | **GET** /users/{userId} | Get user by Id
[**findUserByNameUsingGET**](UserDetailControllerApi.md#findUserByNameUsingGET) | **GET** /users | Get user by name
[**getCurrentUserUsingGET**](UserDetailControllerApi.md#getCurrentUserUsingGET) | **GET** /users/current | Get current logged in user
[**updateAvatarCurrentUserUsingPUT**](UserDetailControllerApi.md#updateAvatarCurrentUserUsingPUT) | **PUT** /users/current/avatar | Update avatar current user
[**updateCurrentUserUsingPATCH**](UserDetailControllerApi.md#updateCurrentUserUsingPATCH) | **PATCH** /users/current | Update current logged in user

# **findUserByIdUsingGET**
> BaseResponseDto findUserByIdUsingGET(userId)

Get user by Id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDetailControllerApi();
var userId = 789; // int | userId

try {
    var result = api_instance.findUserByIdUsingGET(userId);
    print(result);
} catch (e) {
    print("Exception when calling UserDetailControllerApi->findUserByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| userId | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUserByNameUsingGET**
> BaseResponseDto findUserByNameUsingGET(name)

Get user by name

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDetailControllerApi();
var name = name_example; // String | name

try {
    var result = api_instance.findUserByNameUsingGET(name);
    print(result);
} catch (e) {
    print("Exception when calling UserDetailControllerApi->findUserByNameUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name | 

### Return type

[**BaseResponseDto**](BaseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUserUsingGET**
> BaseResponseDto getCurrentUserUsingGET()

Get current logged in user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDetailControllerApi();

try {
    var result = api_instance.getCurrentUserUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling UserDetailControllerApi->getCurrentUserUsingGET: $e\n");
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

# **updateAvatarCurrentUserUsingPUT**
> BaseSingleObjectResponseDto updateAvatarCurrentUserUsingPUT(avatar)

Update avatar current user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDetailControllerApi();
var avatar = avatar_example; // String | avatar

try {
    var result = api_instance.updateAvatarCurrentUserUsingPUT(avatar);
    print(result);
} catch (e) {
    print("Exception when calling UserDetailControllerApi->updateAvatarCurrentUserUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **avatar** | **String**| avatar | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCurrentUserUsingPATCH**
> BaseSingleObjectResponseDto updateCurrentUserUsingPATCH(body)

Update current logged in user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserDetailControllerApi();
var body = new UserAccountChangeRequest(); // UserAccountChangeRequest | userAccountChangeRequest

try {
    var result = api_instance.updateCurrentUserUsingPATCH(body);
    print(result);
} catch (e) {
    print("Exception when calling UserDetailControllerApi->updateCurrentUserUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserAccountChangeRequest**](UserAccountChangeRequest.md)| userAccountChangeRequest | 

### Return type

[**BaseSingleObjectResponseDto**](BaseSingleObjectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

