// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Amazon Simple Notification Service Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build distributed web-enabled applications. Applications can use Amazon SNS to easily push real-time notification messages to interested subscribers over multiple delivery protocols. For more information about this product see https://aws.amazon.com/sns. For detailed information about Amazon SNS features and their associated API calls, see the Amazon SNS Developer Guide.  We also provide SDKs that enable you to access Amazon SNS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as: cryptographically signing your service requests, retrying requests, and handling error responses. For a list of available SDKs, go to Tools for Amazon Web Services. 
*/
public struct SNS {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "sns",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2010-03-31",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [SNSErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.
    @discardableResult public func addPermission(_ input: AddPermissionInput) -> Future<Void> {
        return client.send(operation: "AddPermission", path: "/", httpMethod: "POST", input: input)
    }

    ///  Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out. To resume sending messages, you can opt in the number by using the OptInPhoneNumber action.
    public func checkIfPhoneNumberIsOptedOut(_ input: CheckIfPhoneNumberIsOptedOutInput) -> Future<CheckIfPhoneNumberIsOptedOutResponse> {
        return client.send(operation: "CheckIfPhoneNumberIsOptedOut", path: "/", httpMethod: "POST", input: input)
    }

    ///  Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier Subscribe action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the AuthenticateOnUnsubscribe flag is set to "true".
    public func confirmSubscription(_ input: ConfirmSubscriptionInput) -> Future<ConfirmSubscriptionResponse> {
        return client.send(operation: "ConfirmSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a platform application object for one of the supported push notification services, such as APNS and FCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the CreatePlatformApplication action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For FCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key". For APNS/APNS_SANDBOX, PlatformCredential is "private key". For FCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using CreatePlatformApplication is then used as an attribute for the CreatePlatformEndpoint action.
    public func createPlatformApplication(_ input: CreatePlatformApplicationInput) -> Future<CreatePlatformApplicationResponse> {
        return client.send(operation: "CreatePlatformApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an endpoint for a device and mobile app on one of the supported push notification services, such as FCM and APNS. CreatePlatformEndpoint requires the PlatformApplicationArn that is returned from CreatePlatformApplication. The EndpointArn that is returned when using CreatePlatformEndpoint can then be used by the Publish action to send a message to a mobile app or by the Subscribe action for subscription to a topic. The CreatePlatformEndpoint action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see Using Amazon SNS Mobile Push Notifications.  When using CreatePlatformEndpoint with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see Creating an Amazon SNS Endpoint for Baidu. 
    public func createPlatformEndpoint(_ input: CreatePlatformEndpointInput) -> Future<CreateEndpointResponse> {
        return client.send(operation: "CreatePlatformEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see https://aws.amazon.com/sns. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.
    public func createTopic(_ input: CreateTopicInput) -> Future<CreateTopicResponse> {
        return client.send(operation: "CreateTopic", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see Using Amazon SNS Mobile Push Notifications.  When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.
    @discardableResult public func deleteEndpoint(_ input: DeleteEndpointInput) -> Future<Void> {
        return client.send(operation: "DeleteEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a platform application object for one of the supported push notification services, such as APNS and FCM. For more information, see Using Amazon SNS Mobile Push Notifications. 
    @discardableResult public func deletePlatformApplication(_ input: DeletePlatformApplicationInput) -> Future<Void> {
        return client.send(operation: "DeletePlatformApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.
    @discardableResult public func deleteTopic(_ input: DeleteTopicInput) -> Future<Void> {
        return client.send(operation: "DeleteTopic", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the endpoint attributes for a device on one of the supported push notification services, such as FCM and APNS. For more information, see Using Amazon SNS Mobile Push Notifications. 
    public func getEndpointAttributes(_ input: GetEndpointAttributesInput) -> Future<GetEndpointAttributesResponse> {
        return client.send(operation: "GetEndpointAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and FCM. For more information, see Using Amazon SNS Mobile Push Notifications. 
    public func getPlatformApplicationAttributes(_ input: GetPlatformApplicationAttributesInput) -> Future<GetPlatformApplicationAttributesResponse> {
        return client.send(operation: "GetPlatformApplicationAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the settings for sending SMS messages from your account. These settings are set with the SetSMSAttributes action.
    public func getSMSAttributes(_ input: GetSMSAttributesInput) -> Future<GetSMSAttributesResponse> {
        return client.send(operation: "GetSMSAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all of the properties of a subscription.
    public func getSubscriptionAttributes(_ input: GetSubscriptionAttributesInput) -> Future<GetSubscriptionAttributesResponse> {
        return client.send(operation: "GetSubscriptionAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.
    public func getTopicAttributes(_ input: GetTopicAttributesInput) -> Future<GetTopicAttributesResponse> {
        return client.send(operation: "GetTopicAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as FCM and APNS. The results for ListEndpointsByPlatformApplication are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListEndpointsByPlatformApplication again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 30 transactions per second (TPS).
    public func listEndpointsByPlatformApplication(_ input: ListEndpointsByPlatformApplicationInput) -> Future<ListEndpointsByPlatformApplicationResponse> {
        return client.send(operation: "ListEndpointsByPlatformApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them. The results for ListPhoneNumbersOptedOut are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a NextToken string will be returned. To receive the next page, you call ListPhoneNumbersOptedOut again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null.
    public func listPhoneNumbersOptedOut(_ input: ListPhoneNumbersOptedOutInput) -> Future<ListPhoneNumbersOptedOutResponse> {
        return client.send(operation: "ListPhoneNumbersOptedOut", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the platform application objects for the supported push notification services, such as APNS and FCM. The results for ListPlatformApplications are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListPlatformApplications using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 15 transactions per second (TPS).
    public func listPlatformApplications(_ input: ListPlatformApplicationsInput) -> Future<ListPlatformApplicationsResponse> {
        return client.send(operation: "ListPlatformApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptions call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listSubscriptions(_ input: ListSubscriptionsInput) -> Future<ListSubscriptionsResponse> {
        return client.send(operation: "ListSubscriptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptionsByTopic call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listSubscriptionsByTopic(_ input: ListSubscriptionsByTopicInput) -> Future<ListSubscriptionsByTopicResponse> {
        return client.send(operation: "ListSubscriptionsByTopic", path: "/", httpMethod: "POST", input: input)
    }

    ///  List all tags added to the specified Amazon SNS topic. For an overview, see Amazon SNS Tags in the Amazon Simple Notification Service Developer Guide.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a NextToken is also returned. Use the NextToken parameter in a new ListTopics call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listTopics(_ input: ListTopicsInput) -> Future<ListTopicsResponse> {
        return client.send(operation: "ListTopics", path: "/", httpMethod: "POST", input: input)
    }

    ///  Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number. You can opt in a phone number only once every 30 days.
    public func optInPhoneNumber(_ input: OptInPhoneNumberInput) -> Future<OptInPhoneNumberResponse> {
        return client.send(operation: "OptInPhoneNumber", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sends a message to an Amazon SNS topic or sends a text message (SMS message) directly to a phone number.  If you send a message to a topic, Amazon SNS delivers the message to each endpoint that is subscribed to the topic. The format of the message depends on the notification protocol for each subscribed endpoint. When a messageId is returned, the message has been saved and Amazon SNS will attempt to deliver it shortly. To use the Publish action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the CreatePlatformEndpoint action.  For more information about formatting messages, see Send Custom Platform-Specific Payloads in Messages to Mobile Devices. 
    public func publish(_ input: PublishInput) -> Future<PublishResponse> {
        return client.send(operation: "Publish", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a statement from a topic's access control policy.
    @discardableResult public func removePermission(_ input: RemovePermissionInput) -> Future<Void> {
        return client.send(operation: "RemovePermission", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the attributes for an endpoint for a device on one of the supported push notification services, such as FCM and APNS. For more information, see Using Amazon SNS Mobile Push Notifications. 
    @discardableResult public func setEndpointAttributes(_ input: SetEndpointAttributesInput) -> Future<Void> {
        return client.send(operation: "SetEndpointAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the attributes of the platform application object for the supported push notification services, such as APNS and FCM. For more information, see Using Amazon SNS Mobile Push Notifications. For information on configuring attributes for message delivery status, see Using Amazon SNS Application Attributes for Message Delivery Status. 
    @discardableResult public func setPlatformApplicationAttributes(_ input: SetPlatformApplicationAttributesInput) -> Future<Void> {
        return client.send(operation: "SetPlatformApplicationAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports. You can override some of these settings for a single message when you use the Publish action with the MessageAttributes.entry.N parameter. For more information, see Sending an SMS Message in the Amazon SNS Developer Guide.
    public func setSMSAttributes(_ input: SetSMSAttributesInput) -> Future<SetSMSAttributesResponse> {
        return client.send(operation: "SetSMSAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows a subscription owner to set an attribute of the subscription to a new value.
    @discardableResult public func setSubscriptionAttributes(_ input: SetSubscriptionAttributesInput) -> Future<Void> {
        return client.send(operation: "SetSubscriptionAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows a topic owner to set an attribute of the topic to a new value.
    @discardableResult public func setTopicAttributes(_ input: SetTopicAttributesInput) -> Future<Void> {
        return client.send(operation: "SetTopicAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the ConfirmSubscription action with the token from the confirmation message. Confirmation tokens are valid for three days. This action is throttled at 100 transactions per second (TPS).
    public func subscribe(_ input: SubscribeInput) -> Future<SubscribeResponse> {
        return client.send(operation: "Subscribe", path: "/", httpMethod: "POST", input: input)
    }

    ///  Add tags to the specified Amazon SNS topic. For an overview, see Amazon SNS Tags in the Amazon SNS Developer Guide. When you use topic tags, keep the following guidelines in mind:   Adding more than 50 tags to a topic isn't recommended.   Tags don't have any semantic meaning. Amazon SNS interprets tags as character strings.   Tags are case-sensitive.   A new tag with a key identical to that of an existing tag overwrites the existing tag.   Tagging actions are limited to 10 TPS per AWS account, per AWS region. If your application requires a higher throughput, file a technical support request.  
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the Unsubscribe call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the Unsubscribe request was unintended. This action is throttled at 100 transactions per second (TPS).
    @discardableResult public func unsubscribe(_ input: UnsubscribeInput) -> Future<Void> {
        return client.send(operation: "Unsubscribe", path: "/", httpMethod: "POST", input: input)
    }

    ///  Remove tags from the specified Amazon SNS topic. For an overview, see Amazon SNS Tags in the Amazon SNS Developer Guide.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }
}
