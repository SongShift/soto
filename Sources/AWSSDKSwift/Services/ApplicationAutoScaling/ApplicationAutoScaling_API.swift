// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
With Application Auto Scaling, you can configure automatic scaling for the following resources:   Amazon ECS services   Amazon EC2 Spot Fleet requests   Amazon EMR clusters   Amazon AppStream 2.0 fleets   Amazon DynamoDB tables and global secondary indexes throughput capacity   Amazon Aurora Replicas   Amazon SageMaker endpoint variants   Custom resources provided by your own applications or services   Amazon Comprehend document classification endpoints   AWS Lambda function provisioned concurrency    API Summary  The Application Auto Scaling service API includes three key sets of actions:    Register and manage scalable targets - Register AWS or custom resources as scalable targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and retrieve information on existing scalable targets.   Configure and manage automatic scaling - Define scaling policies to dynamically scale your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions, and retrieve your recent scaling activity history.   Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by calling the RegisterScalableTarget action for any Application Auto Scaling scalable target. You can suspend and resume, individually or in combination, scale-out activities triggered by a scaling policy, scale-in activities triggered by a scaling policy, and scheduled scaling.    To learn more about Application Auto Scaling, including information about granting IAM users required permissions for Application Auto Scaling actions, see the Application Auto Scaling User Guide.
*/
public struct ApplicationAutoScaling {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AnyScaleFrontendService",
            service: "application-autoscaling",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-02-06",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApplicationAutoScalingErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Deletes the specified scaling policy for an Application Auto Scaling scalable target. Deleting a step scaling policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. For more information, see Delete a Step Scaling Policy and Delete a Target Tracking Scaling Policy in the Application Auto Scaling User Guide. To create a scaling policy or update an existing one, see PutScalingPolicy.
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest) -> Future<DeleteScalingPolicyResponse> {
        return client.send(operation: "DeleteScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified scheduled action for an Application Auto Scaling scalable target. For more information, see Delete a Scheduled Action in the Application Auto Scaling User Guide.
    public func deleteScheduledAction(_ input: DeleteScheduledActionRequest) -> Future<DeleteScheduledActionResponse> {
        return client.send(operation: "DeleteScheduledAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deregisters an Application Auto Scaling scalable target. Deregistering a scalable target deletes the scaling policies that are associated with it. To create a scalable target or update an existing one, see RegisterScalableTarget. 
    public func deregisterScalableTarget(_ input: DeregisterScalableTargetRequest) -> Future<DeregisterScalableTargetResponse> {
        return client.send(operation: "DeregisterScalableTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension. To create a scalable target or update an existing one, see RegisterScalableTarget. If you are no longer using a scalable target, you can deregister it using DeregisterScalableTarget.
    public func describeScalableTargets(_ input: DescribeScalableTargetsRequest) -> Future<DescribeScalableTargetsResponse> {
        return client.send(operation: "DescribeScalableTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension. Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see DescribeScalingPolicies. To create a scaling policy or update an existing one, see PutScalingPolicy.
    public func describeScalingActivities(_ input: DescribeScalingActivitiesRequest) -> Future<DescribeScalingActivitiesResponse> {
        return client.send(operation: "DescribeScalingActivities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. To create a scaling policy or update an existing one, see PutScalingPolicy. If you are no longer using a scaling policy, you can delete it using DeleteScalingPolicy.
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest) -> Future<DescribeScalingPoliciesResponse> {
        return client.send(operation: "DescribeScalingPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. To create a scheduled action or update an existing one, see PutScheduledAction. If you are no longer using a scheduled action, you can delete it using DeleteScheduledAction.
    public func describeScheduledActions(_ input: DescribeScheduledActionsRequest) -> Future<DescribeScheduledActionsResponse> {
        return client.send(operation: "DescribeScheduledActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target using RegisterScalableTarget. To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request. You can view the scaling policies for a service namespace using DescribeScalingPolicies. If you are no longer using a scaling policy, you can delete it using DeleteScalingPolicy. Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale out and scale in. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30.  Learn more about how to work with scaling policies in the Application Auto Scaling User Guide.
    public func putScalingPolicy(_ input: PutScalingPolicyRequest) -> Future<PutScalingPolicyResponse> {
        return client.send(operation: "PutScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a scheduled action for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target using RegisterScalableTarget.  To update an action, specify its name and the parameters that you want to change. If you don't specify start and end times, the old values are deleted. Any other parameters that you don't specify are not changed by this update request. You can view the scheduled actions using DescribeScheduledActions. If you are no longer using a scheduled action, you can delete it using DeleteScheduledAction. Learn more about how to work with scheduled actions in the Application Auto Scaling User Guide.
    public func putScheduledAction(_ input: PutScheduledActionRequest) -> Future<PutScheduledActionResponse> {
        return client.send(operation: "PutScheduledAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out and scale in. Scalable targets are uniquely identified by the combination of resource ID, scalable dimension, and namespace.  When you register a new scalable target, you must specify values for minimum and maximum capacity. Application Auto Scaling will not scale capacity to values that are outside of this range.  To update a scalable target, specify the parameter that you want to change as well as the following parameters that identify the scalable target: resource ID, scalable dimension, and namespace. Any parameters that you don't specify are not changed by this update request.  After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use DescribeScalableTargets. You can also view the scaling policies for a service namespace by using DescribeScalableTargets.  If you no longer need a scalable target, you can deregister it by using DeregisterScalableTarget.
    public func registerScalableTarget(_ input: RegisterScalableTargetRequest) -> Future<RegisterScalableTargetResponse> {
        return client.send(operation: "RegisterScalableTarget", path: "/", httpMethod: "POST", input: input)
    }
}
