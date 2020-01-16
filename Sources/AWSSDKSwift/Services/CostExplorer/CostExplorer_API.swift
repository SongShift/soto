// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
The Cost Explorer API enables you to programmatically query your cost and usage data. You can query for aggregated data such as total monthly costs or total daily usage. You can also query for granular data, such as the number of daily write operations for Amazon DynamoDB database tables in your production environment.  Service Endpoint The Cost Explorer API provides the following endpoint:    https://ce.us-east-1.amazonaws.com    For information about costs associated with the Cost Explorer API, see AWS Cost Management Pricing.
*/
public struct CostExplorer {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSInsightsIndexService",
            service: "ce",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-25",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "ce.us-east-1.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: middlewares,
            possibleErrorTypes: [CostExplorerErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///     Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Creates a new Cost Category with the requested name and rules.
    public func createCostCategoryDefinition(_ input: CreateCostCategoryDefinitionRequest) -> Future<CreateCostCategoryDefinitionResponse> {
        return client.send(operation: "CreateCostCategoryDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///     Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.
    public func deleteCostCategoryDefinition(_ input: DeleteCostCategoryDefinitionRequest) -> Future<DeleteCostCategoryDefinitionResponse> {
        return client.send(operation: "DeleteCostCategoryDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///     Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Returns the name, ARN, rules, definition, and effective dates of a Cost Category that's defined in the account. You have the option to use EffectiveOn to return a Cost Category that is active on a specific date. If there is no EffectiveOn specified, you’ll see a Cost Category that is effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. 
    public func describeCostCategoryDefinition(_ input: DescribeCostCategoryDefinitionRequest) -> Future<DescribeCostCategoryDefinitionResponse> {
        return client.send(operation: "DescribeCostCategoryDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the GetDimensionValues operation. Master accounts in an organization in AWS Organizations have access to all member accounts.
    public func getCostAndUsage(_ input: GetCostAndUsageRequest) -> Future<GetCostAndUsageResponse> {
        return client.send(operation: "GetCostAndUsage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the GetDimensionValues operation. Master accounts in an organization in AWS Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.  This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information on how to access the Settings page, see Controlling Access for Cost Explorer in the AWS Billing and Cost Management User Guide. 
    public func getCostAndUsageWithResources(_ input: GetCostAndUsageWithResourcesRequest) -> Future<GetCostAndUsageWithResourcesResponse> {
        return client.send(operation: "GetCostAndUsageWithResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. 
    public func getCostForecast(_ input: GetCostForecastRequest) -> Future<GetCostForecastResponse> {
        return client.send(operation: "GetCostForecast", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. 
    public func getDimensionValues(_ input: GetDimensionValuesRequest) -> Future<GetDimensionValuesResponse> {
        return client.send(operation: "GetDimensionValues", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's master account can see the coverage of the associated member accounts. For any time period, you can filter data about reservation usage by the following dimensions:   AZ   CACHE_ENGINE   DATABASE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   SERVICE   TAG   TENANCY   To determine valid values for a dimension, use the GetDimensionValues operation. 
    public func getReservationCoverage(_ input: GetReservationCoverageRequest) -> Future<GetReservationCoverageResponse> {
        return client.send(operation: "GetReservationCoverage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing. AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings.  For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for c4.large because that is the smallest size instance in the c4 instance family.
    public func getReservationPurchaseRecommendation(_ input: GetReservationPurchaseRecommendationRequest) -> Future<GetReservationPurchaseRecommendationResponse> {
        return client.send(operation: "GetReservationPurchaseRecommendation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the reservation utilization for your account. Master accounts in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use GetDimensionValues to determine the possible dimension values. Currently, you can group only by SUBSCRIPTION_ID. 
    public func getReservationUtilization(_ input: GetReservationUtilizationRequest) -> Future<GetReservationUtilizationResponse> {
        return client.send(operation: "GetReservationUtilization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates recommendations that helps you save cost by identifying idle and underutilized Amazon EC2 instances. Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For details on calculation and function, see Optimizing Your Cost with Rightsizing Recommendations.
    public func getRightsizingRecommendation(_ input: GetRightsizingRecommendationRequest) -> Future<GetRightsizingRecommendationResponse> {
        return client.send(operation: "GetRightsizingRecommendation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s master account can see the coverage of the associated member accounts. For any time period, you can filter data for Savings Plans usage with the following dimensions:    LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY    To determine valid values for a dimension, use the GetDimensionValues operation.
    public func getSavingsPlansCoverage(_ input: GetSavingsPlansCoverageRequest) -> Future<GetSavingsPlansCoverageResponse> {
        return client.send(operation: "GetSavingsPlansCoverage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves your request parameters, Savings Plan Recommendations Summary and Details.
    public func getSavingsPlansPurchaseRecommendation(_ input: GetSavingsPlansPurchaseRecommendationRequest) -> Future<GetSavingsPlansPurchaseRecommendationResponse> {
        return client.send(operation: "GetSavingsPlansPurchaseRecommendation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Master accounts in an organization have access to member accounts. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.  You cannot group by any dimension values for GetSavingsPlansUtilization. 
    public func getSavingsPlansUtilization(_ input: GetSavingsPlansUtilizationRequest) -> Future<GetSavingsPlansUtilizationResponse> {
        return client.send(operation: "GetSavingsPlansUtilization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.   GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn. 
    public func getSavingsPlansUtilizationDetails(_ input: GetSavingsPlansUtilizationDetailsRequest) -> Future<GetSavingsPlansUtilizationDetailsResponse> {
        return client.send(operation: "GetSavingsPlansUtilizationDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. 
    public func getTags(_ input: GetTagsRequest) -> Future<GetTagsResponse> {
        return client.send(operation: "GetTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. 
    public func getUsageForecast(_ input: GetUsageForecastRequest) -> Future<GetUsageForecastResponse> {
        return client.send(operation: "GetUsageForecast", path: "/", httpMethod: "POST", input: input)
    }

    ///     Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Returns the name, ARN and effective dates of all Cost Categories defined in the account. You have the option to use EffectiveOn to return a list of Cost Categories that were active on a specific date. If there is no EffectiveOn specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. 
    public func listCostCategoryDefinitions(_ input: ListCostCategoryDefinitionsRequest) -> Future<ListCostCategoryDefinitionsResponse> {
        return client.send(operation: "ListCostCategoryDefinitions", path: "/", httpMethod: "POST", input: input)
    }

    ///     Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.
    public func updateCostCategoryDefinition(_ input: UpdateCostCategoryDefinitionRequest) -> Future<UpdateCostCategoryDefinitionResponse> {
        return client.send(operation: "UpdateCostCategoryDefinition", path: "/", httpMethod: "POST", input: input)
    }
}
