//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS ResourceGroupsTaggingAPI service.
///
/// Resource Groups Tagging API This guide describes the API operations for the resource groups tagging. A tag is a label that you assign to an AWS resource. A tag consists of a key and a value, both of which you define. For example, if you have two Amazon EC2 instances, you might assign both a tag key of "Stack." But the value of "Stack" might be "Testing" for one and "Production" for the other.  Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.  Tagging can help you organize your resources and enables you to simplify resource management, access management and cost allocation.  You can use the resource groups tagging API operations to complete the following tasks:   Tag and untag supported resources located in the specified Region for the AWS account.   Use tag-based filters to search for resources located in the specified Region for the AWS account.   List all existing tag keys in the specified Region for the AWS account.   List all existing values for the specified key in the specified Region for the AWS account.   To use resource groups tagging API operations, you must add the following permissions to your IAM policy:    tag:GetResources     tag:TagResources     tag:UntagResources     tag:GetTagKeys     tag:GetTagValues    You'll also need permissions to access the resources of individual services so that you can tag and untag those resources. For more information on IAM policies, see Managing IAM Policies in the IAM User Guide.   Services that support the Resource Groups Tagging API   You can use the Resource Groups Tagging API to tag resources for the following AWS services.    Alexa for Business (a4b)     API Gateway     Amazon AppStream     AWS AppSync     AWS App Mesh     Amazon Athena     Amazon Aurora     AWS Backup     AWS Certificate Manager     AWS Certificate Manager Private CA     Amazon Cloud Directory     AWS Cloud Map     AWS CloudFormation     Amazon CloudFront     AWS CloudHSM     AWS CloudTrail     Amazon CloudWatch (alarms only)     Amazon CloudWatch Events     Amazon CloudWatch Logs     Amazon Cloudwatch Synthetics     AWS CodeBuild     AWS CodeCommit     AWS CodeGuru Profiler     AWS CodePipeline     AWS CodeStar     AWS CodeStar Connections     Amazon Cognito Identity     Amazon Cognito User Pools     Amazon Comprehend     AWS Config     Amazon Connect     AWS Data Exchange     AWS Data Pipeline     AWS Database Migration Service     AWS DataSync     AWS Device Farm     AWS Direct Connect     AWS Directory Service     Amazon DynamoDB     Amazon EBS     Amazon EC2     EC2 Image Builder     Amazon ECR     Amazon ECS     Amazon EKS     AWS Elastic Beanstalk     Amazon Elastic File System     Elastic Load Balancing     Amazon Elastic Inference     Amazon ElastiCache     Amazon Elasticsearch Service     AWS Elemental MediaLive     AWS Elemental MediaPackage     AWS Elemental MediaPackage VoD     AWS Elemental MediaTailor     Amazon EMR     Amazon EventBridge Schema     AWS Firewall Manager     Amazon Forecast     Amazon Fraud Detector     Amazon FSx     Amazon S3 Glacier     AWS Global Accelerator     AWS Ground Station     AWS Glue     Amazon GuardDuty     Amazon Inspector     Amazon Interactive Video Service     AWS IoT Analytics     AWS IoT Core     AWS IoT Device Defender     AWS IoT Device Management     AWS IoT Events     AWS IoT Greengrass     AWS IoT 1-Click     AWS IoT Sitewise     AWS IoT Things Graph     Amazon Kendra     AWS Key Management Service     Amazon Kinesis     Amazon Kinesis Data Analytics     Amazon Kinesis Data Firehose     AWS Lambda     Amazon Lex     AWS License Manager     Amazon Lightsail     Amazon Macie     Amazon Machine Learning     Amazon MQ     Amazon MSK     Amazon MSK     Amazon Neptune     AWS Network Manager     AWS OpsWorks     AWS OpsWorks CM     AWS Organizations     Amazon Pinpoint     Amazon Quantum Ledger Database (QLDB)     Amazon RDS     Amazon Redshift     AWS Resource Access Manager     AWS Resource Groups     AWS RoboMaker     Amazon Route 53     Amazon Route 53 Resolver     Amazon S3 (buckets only)     Amazon SageMaker     Savings Plans     AWS Secrets Manager     AWS Security Hub     AWS Service Catalog     Amazon Simple Email Service (SES)     Amazon Simple Notification Service (SNS)     Amazon Simple Queue Service (SQS)     Amazon Simple Workflow Service     AWS Step Functions     AWS Storage Gateway     AWS Systems Manager     AWS Transfer for SFTP     Amazon VPC     AWS WAF     AWS WAF Regional     Amazon WorkLink     Amazon WorkSpaces
public struct ResourceGroupsTaggingAPI: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ResourceGroupsTaggingAPI client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "ResourceGroupsTaggingAPI_20170126",
            service: "tagging",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-01-26",
            endpoint: endpoint,
            errorType: ResourceGroupsTaggingAPIErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Describes the status of the StartReportCreation operation.  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func describeReportCreation(_ input: DescribeReportCreationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReportCreationOutput> {
        return self.client.execute(operation: "DescribeReportCreation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func getComplianceSummary(_ input: GetComplianceSummaryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetComplianceSummaryOutput> {
        return self.client.execute(operation: "GetComplianceSummary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all the tagged or previously tagged resources that are located in the specified Region for the AWS account. Depending on what information you want returned, you can also specify the following:    Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.   Information about compliance with the account's effective tag policy. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.     You can check the PaginationToken response parameter to determine if a query is complete. Queries occasionally return fewer results on a page than allowed. The PaginationToken response parameter value is null only when there are no more results to display.
    public func getResources(_ input: GetResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcesOutput> {
        return self.client.execute(operation: "GetResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all tag keys in the specified Region for the AWS account.
    public func getTagKeys(_ input: GetTagKeysInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagKeysOutput> {
        return self.client.execute(operation: "GetTagKeys", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all tag values for the specified key in the specified Region for the AWS account.
    public func getTagValues(_ input: GetTagValuesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagValuesOutput> {
        return self.client.execute(operation: "GetTagValues", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a report that lists all tagged resources in accounts across your organization and tells whether each resource is compliant with the effective tag policy. Compliance data is refreshed daily.  The generated report is saved to the following location:  s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func startReportCreation(_ input: StartReportCreationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReportCreationOutput> {
        return self.client.execute(operation: "StartReportCreation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies one or more tags to the specified resources. Note the following:   Not all resources can have tags. For a list of services that support tagging, see this list.   Each resource can have up to 50 tags. For other limits, see Tag Naming and Usage Conventions in the AWS General Reference.    You can only tag resources that are located in the specified Region for the AWS account.   To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see this list.    Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.
    public func tagResources(_ input: TagResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourcesOutput> {
        return self.client.execute(operation: "TagResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see this list.   You can only tag resources that are located in the specified Region for the AWS account.
    public func untagResources(_ input: UntagResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourcesOutput> {
        return self.client.execute(operation: "UntagResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ResourceGroupsTaggingAPI {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ResourceGroupsTaggingAPI, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
