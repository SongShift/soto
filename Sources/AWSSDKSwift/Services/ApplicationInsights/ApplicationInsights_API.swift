// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Amazon CloudWatch Application Insights for .NET and SQL Server  Amazon CloudWatch Application Insights for .NET and SQL Server is a service that helps you detect common problems with your .NET and SQL Server-based applications. It enables you to pinpoint the source of issues in your applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into detected problems. After you onboard your application, CloudWatch Application Insights for .NET and SQL Server identifies, recommends, and sets up metrics and logs. It continuously analyzes and correlates your metrics and logs for unusual behavior to surface actionable problems with your application. For example, if your application is slow and unresponsive and leading to HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you that a memory pressure problem with your SQL Server database is occurring. It bases this analysis on impactful metrics and log errors. 
*/
public struct ApplicationInsights {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "EC2WindowsBarleyService",
            service: "applicationinsights",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-25",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApplicationInsightsErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Adds an application that is created from a resource group.
    public func createApplication(_ input: CreateApplicationRequest) -> Future<CreateApplicationResponse> {
        return client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a custom component by grouping similar standalone instances to monitor.
    public func createComponent(_ input: CreateComponentRequest) -> Future<CreateComponentResponse> {
        return client.send(operation: "CreateComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an log pattern to a LogPatternSet.
    public func createLogPattern(_ input: CreateLogPatternRequest) -> Future<CreateLogPatternResponse> {
        return client.send(operation: "CreateLogPattern", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified application from monitoring. Does not delete the application.
    public func deleteApplication(_ input: DeleteApplicationRequest) -> Future<DeleteApplicationResponse> {
        return client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.
    public func deleteComponent(_ input: DeleteComponentRequest) -> Future<DeleteComponentResponse> {
        return client.send(operation: "DeleteComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified log pattern from a LogPatternSet.
    public func deleteLogPattern(_ input: DeleteLogPatternRequest) -> Future<DeleteLogPatternResponse> {
        return client.send(operation: "DeleteLogPattern", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the application.
    public func describeApplication(_ input: DescribeApplicationRequest) -> Future<DescribeApplicationResponse> {
        return client.send(operation: "DescribeApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a component and lists the resources that are grouped together in a component.
    public func describeComponent(_ input: DescribeComponentRequest) -> Future<DescribeComponentResponse> {
        return client.send(operation: "DescribeComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the monitoring configuration of the component.
    public func describeComponentConfiguration(_ input: DescribeComponentConfigurationRequest) -> Future<DescribeComponentConfigurationResponse> {
        return client.send(operation: "DescribeComponentConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the recommended monitoring configuration of the component.
    public func describeComponentConfigurationRecommendation(_ input: DescribeComponentConfigurationRecommendationRequest) -> Future<DescribeComponentConfigurationRecommendationResponse> {
        return client.send(operation: "DescribeComponentConfigurationRecommendation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describe a specific log pattern from a LogPatternSet.
    public func describeLogPattern(_ input: DescribeLogPatternRequest) -> Future<DescribeLogPatternResponse> {
        return client.send(operation: "DescribeLogPattern", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes an anomaly or error with the application.
    public func describeObservation(_ input: DescribeObservationRequest) -> Future<DescribeObservationResponse> {
        return client.send(operation: "DescribeObservation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes an application problem.
    public func describeProblem(_ input: DescribeProblemRequest) -> Future<DescribeProblemResponse> {
        return client.send(operation: "DescribeProblem", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the anomalies or errors associated with the problem.
    public func describeProblemObservations(_ input: DescribeProblemObservationsRequest) -> Future<DescribeProblemObservationsResponse> {
        return client.send(operation: "DescribeProblemObservations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the IDs of the applications that you are monitoring. 
    public func listApplications(_ input: ListApplicationsRequest) -> Future<ListApplicationsResponse> {
        return client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the auto-grouped, standalone, and custom components of the application.
    public func listComponents(_ input: ListComponentsRequest) -> Future<ListComponentsResponse> {
        return client.send(operation: "ListComponents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the log pattern sets in the specific application.
    public func listLogPatternSets(_ input: ListLogPatternSetsRequest) -> Future<ListLogPatternSetsResponse> {
        return client.send(operation: "ListLogPatternSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the log patterns in the specific log LogPatternSet.
    public func listLogPatterns(_ input: ListLogPatternsRequest) -> Future<ListLogPatternsResponse> {
        return client.send(operation: "ListLogPatterns", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the problems with your application.
    public func listProblems(_ input: ListProblemsRequest) -> Future<ListProblemsResponse> {
        return client.send(operation: "ListProblems", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Remove one or more tags (keys and values) from a specified application.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the application.
    public func updateApplication(_ input: UpdateApplicationRequest) -> Future<UpdateApplicationResponse> {
        return client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the custom component name and/or the list of resources that make up the component.
    public func updateComponent(_ input: UpdateComponentRequest) -> Future<UpdateComponentResponse> {
        return client.send(operation: "UpdateComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation. 
    public func updateComponentConfiguration(_ input: UpdateComponentConfigurationRequest) -> Future<UpdateComponentConfigurationResponse> {
        return client.send(operation: "UpdateComponentConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a log pattern to a LogPatternSet.
    public func updateLogPattern(_ input: UpdateLogPatternRequest) -> Future<UpdateLogPatternResponse> {
        return client.send(operation: "UpdateLogPattern", path: "/", httpMethod: "POST", input: input)
    }
}
