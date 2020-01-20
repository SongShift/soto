// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension Neptune {

    ///  Returns a list of the available DB engines.
    public func describeDBEngineVersionsPaginator(_ input: DescribeDBEngineVersionsMessage) -> EventLoopFuture<[DBEngineVersion]> {
        return client.paginate(input: input, command: describeDBEngineVersions, resultKey: "dBEngineVersions", tokenKey: "marker")
    }
    
    ///  Returns information about provisioned instances. This API supports pagination.
    public func describeDBInstancesPaginator(_ input: DescribeDBInstancesMessage) -> EventLoopFuture<[DBInstance]> {
        return client.paginate(input: input, command: describeDBInstances, resultKey: "dBInstances", tokenKey: "marker")
    }
    
    ///  Returns a list of DBParameterGroup descriptions. If a DBParameterGroupName is specified, the list will contain only the description of the specified DB parameter group.
    public func describeDBParameterGroupsPaginator(_ input: DescribeDBParameterGroupsMessage) -> EventLoopFuture<[DBParameterGroup]> {
        return client.paginate(input: input, command: describeDBParameterGroups, resultKey: "dBParameterGroups", tokenKey: "marker")
    }
    
    ///  Returns the detailed parameter list for a particular DB parameter group.
    public func describeDBParametersPaginator(_ input: DescribeDBParametersMessage) -> EventLoopFuture<[Parameter]> {
        return client.paginate(input: input, command: describeDBParameters, resultKey: "parameters", tokenKey: "marker")
    }
    
    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup. For an overview of CIDR ranges, go to the Wikipedia Tutorial.
    public func describeDBSubnetGroupsPaginator(_ input: DescribeDBSubnetGroupsMessage) -> EventLoopFuture<[DBSubnetGroup]> {
        return client.paginate(input: input, command: describeDBSubnetGroups, resultKey: "dBSubnetGroups", tokenKey: "marker")
    }
    
    ///  Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status. If you specify a SubscriptionName, lists the description for that subscription.
    public func describeEventSubscriptionsPaginator(_ input: DescribeEventSubscriptionsMessage) -> EventLoopFuture<[EventSubscription]> {
        return client.paginate(input: input, command: describeEventSubscriptions, resultKey: "eventSubscriptionsList", tokenKey: "marker")
    }
    
    ///  Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
    public func describeEventsPaginator(_ input: DescribeEventsMessage) -> EventLoopFuture<[Event]> {
        return client.paginate(input: input, command: describeEvents, resultKey: "events", tokenKey: "marker")
    }
    
    ///  Returns a list of orderable DB instance options for the specified engine.
    public func describeOrderableDBInstanceOptionsPaginator(_ input: DescribeOrderableDBInstanceOptionsMessage) -> EventLoopFuture<[OrderableDBInstanceOption]> {
        return client.paginate(input: input, command: describeOrderableDBInstanceOptions, resultKey: "orderableDBInstanceOptions", tokenKey: "marker")
    }
    
}

extension Neptune.DescribeDBEngineVersionsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBParameterGroupFamily: original.dBParameterGroupFamily, 
            defaultOnly: original.defaultOnly, 
            engine: original.engine, 
            engineVersion: original.engineVersion, 
            filters: original.filters, 
            listSupportedCharacterSets: original.listSupportedCharacterSets, 
            listSupportedTimezones: original.listSupportedTimezones, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension Neptune.DescribeDBInstancesMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBInstanceIdentifier: original.dBInstanceIdentifier, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension Neptune.DescribeDBParameterGroupsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBParameterGroupName: original.dBParameterGroupName, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension Neptune.DescribeDBParametersMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBParameterGroupName: original.dBParameterGroupName, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            source: original.source
        )
    }
}

extension Neptune.DescribeDBSubnetGroupsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBSubnetGroupName: original.dBSubnetGroupName, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension Neptune.DescribeEventSubscriptionsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            subscriptionName: original.subscriptionName
        )
    }
}

extension Neptune.DescribeEventsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            duration: original.duration, 
            endTime: original.endTime, 
            eventCategories: original.eventCategories, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            sourceIdentifier: original.sourceIdentifier, 
            sourceType: original.sourceType, 
            startTime: original.startTime
        )
    }
}

extension Neptune.DescribeOrderableDBInstanceOptionsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBInstanceClass: original.dBInstanceClass, 
            engine: original.engine, 
            engineVersion: original.engineVersion, 
            filters: original.filters, 
            licenseModel: original.licenseModel, 
            marker: token, 
            maxRecords: original.maxRecords, 
            vpc: original.vpc
        )
    }
}


