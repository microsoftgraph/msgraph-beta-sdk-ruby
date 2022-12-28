# Microsoft Graph Beta SDK for Ruby

Get started with the Microsoft Graph Beta SDK for Ruby by integrating the [Microsoft Graph API](https://learn.microsoft.com/graph/overview) into your Ruby application!

> **Note:** this SDK allows you to build applications using the [beta](https://docs.microsoft.com/en-us/graph/use-the-api#version) of Microsoft Graph. If you want to use the production supported Microsoft Graph APIs under v1.0, use our [v1.0 SDK](https://github.com/microsoftgraph/msgraph-sdk-ruby) instead.
>
> **Note:** the Microsoft Graph Ruby SDK is currently in Community Preview. During this period we're expecting breaking changes to happen to the SDK based on community's feedback. Checkout the [known limitations](https://github.com/microsoftgraph/msgraph-sdk-ruby-core/issues/1).

## 1. Installation

run `gem install microsoft_graph_beta` or include `gem microsoft_graph_beta` in your gemfile.

## 2. Getting started

### 2.1 Register your application

Register your application by following the steps at [Register your app with the Microsoft Identity Platform](https://learn.microsoft.com/graph/auth-register-app-v2).

### 2.2 Create an AuthenticationProvider object

An instance of the **MicrosoftGraphServiceClient** class handles building client. To create a new instance of this class, you need to provide an instance of **AuthenticationProvider**, which can authenticate requests to Microsoft Graph.

For an example of how to get an authentication provider, see [choose a Microsoft Graph authentication provider](https://learn.microsoft.com/graph/sdks/choose-authentication-providers?tabs=Ruby).

> Note: we are working to add the getting started information for Ruby to our public documentation, in the meantime the following sample should help you getting started.

```Ruby
require "microsoft_kiota_authentication_oauth"

context = MicrosoftKiotaAuthenticationOauth::ClientCredentialContext.new("<the tenant id from your app registration>", "<the client id from your app registration>", "<the client secret from your app registration>")

authentication_provider = MicrosoftKiotaAuthenticationOauth::OAuthAuthenticationProvider.new(context, nil, ["Files.Read"])
```

### 2.3 Get a Graph Service Client and Adapter object

You must get a **MicrosoftGraphServiceClient** object to make requests against the service.

```ruby
require "microsoft_graph_beta"

adapter = MicrosoftGraphBeta::MicrosoftGraphRequestAdapter.new(authentication_provider)
client = MicrosoftGraphBeta::MicrosoftGraphServiceClient.new(adapter)
```

## 3. Make requests against the service

After you have a **MicrosoftGraphServiceClient** that is authenticated, you can begin making calls against the service. The requests against the service look like our [REST API](https://learn.microsoft.com/graph/api/overview?view=graph-rest-1.0).

### 3.1 Get the user's drive

To retrieve the user's drive:

```ruby
result = client.me.drive.get.resume
puts "Found Drive : " + result.id
```

## 4. Getting results that span across multiple pages

Automatic paging is currently not supported with the Ruby SDK, we're working to enable this feature.

## 5. Documentation

For more detailed documentation, see:

* [Overview](https://learn.microsoft.com/graph/overview)
* [Collections](https://learn.microsoft.com/graph/sdks/paging)
* [Making requests](https://learn.microsoft.com/graph/sdks/create-requests)
* [Known issues](https://github.com/MicrosoftGraph/msgraph-sdk-ruby/issues)
* [Contributions](https://github.com/microsoftgraph/msgraph-sdk-ruby/blob/main/CONTRIBUTING.md)

## 6. Issues

For known issues, see [issues](https://github.com/MicrosoftGraph/msgraph-sdk-ruby/issues).

## 7. Contributions

The Microsoft Graph SDK is open for contribution. To contribute to this project, see [Contributing](https://github.com/microsoftgraph/msgraph-sdk-ruby/blob/main/CONTRIBUTING.md).

## 8. License

Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the [MIT license](LICENSE).

## 9. Third-party notices

[Third-party notices](THIRD%20PARTY%20NOTICES)
