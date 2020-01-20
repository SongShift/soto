// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension CodeDeploy {

    ///  Lists information about revisions for an application.
    public func listApplicationRevisionsPaginator(_ input: ListApplicationRevisionsInput) -> EventLoopFuture<[RevisionLocation]> {
        return client.paginate(input: input, command: listApplicationRevisions, resultKey: "revisions", tokenKey: "nextToken")
    }
    
    ///  Lists the applications registered with the IAM user or AWS account.
    public func listApplicationsPaginator(_ input: ListApplicationsInput) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listApplications, resultKey: "applications", tokenKey: "nextToken")
    }
    
    ///  Lists the deployment configurations with the IAM user or AWS account.
    public func listDeploymentConfigsPaginator(_ input: ListDeploymentConfigsInput) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDeploymentConfigs, resultKey: "deploymentConfigsList", tokenKey: "nextToken")
    }
    
    ///  Lists the deployment groups for an application registered with the IAM user or AWS account.
    public func listDeploymentGroupsPaginator(_ input: ListDeploymentGroupsInput) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDeploymentGroups, resultKey: "deploymentGroups", tokenKey: "nextToken")
    }
    
    ///    The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda.    Lists the instance for a deployment associated with the IAM user or AWS account. 
    @available(*, deprecated, message:"This operation is deprecated, use ListDeploymentTargets instead.")
    public func listDeploymentInstancesPaginator(_ input: ListDeploymentInstancesInput) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDeploymentInstances, resultKey: "instancesList", tokenKey: "nextToken")
    }
    
    ///  Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.
    public func listDeploymentsPaginator(_ input: ListDeploymentsInput) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDeployments, resultKey: "deployments", tokenKey: "nextToken")
    }
    
}

extension CodeDeploy.ListApplicationRevisionsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            applicationName: original.applicationName, 
            deployed: original.deployed, 
            nextToken: token, 
            s3Bucket: original.s3Bucket, 
            s3KeyPrefix: original.s3KeyPrefix, 
            sortBy: original.sortBy, 
            sortOrder: original.sortOrder
        )
    }
}

extension CodeDeploy.ListApplicationsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension CodeDeploy.ListDeploymentConfigsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension CodeDeploy.ListDeploymentGroupsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            applicationName: original.applicationName, 
            nextToken: token
        )
    }
}

extension CodeDeploy.ListDeploymentInstancesInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            deploymentId: original.deploymentId, 
            instanceStatusFilter: original.instanceStatusFilter, 
            instanceTypeFilter: original.instanceTypeFilter, 
            nextToken: token
        )
    }
}

extension CodeDeploy.ListDeploymentsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            applicationName: original.applicationName, 
            createTimeRange: original.createTimeRange, 
            deploymentGroupName: original.deploymentGroupName, 
            includeOnlyStatuses: original.includeOnlyStatuses, 
            nextToken: token
        )
    }
}


