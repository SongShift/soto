// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension CloudTrail {

    ///  Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key. 
    public func listPublicKeysPaginator(_ input: ListPublicKeysRequest) -> EventLoopFuture<[PublicKey]> {
        return client.paginate(input: input, command: listPublicKeys, resultKey: "publicKeyList", tokenKey: "nextToken")
    }
    
    ///  Lists the tags for the trail in the current region.
    public func listTagsPaginator(_ input: ListTagsRequest) -> EventLoopFuture<[ResourceTag]> {
        return client.paginate(input: input, command: listTags, resultKey: "resourceTagList", tokenKey: "nextToken")
    }
    
    ///  Lists trails that are in the current account.
    public func listTrailsPaginator(_ input: ListTrailsRequest) -> EventLoopFuture<[TrailInfo]> {
        return client.paginate(input: input, command: listTrails, resultKey: "trails", tokenKey: "nextToken")
    }
    
    ///  Looks up management events or CloudTrail Insights events that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:   AWS access key   Event ID   Event name   Event source   Read only   Resource name   Resource type   User name   Lookup supports the following attributes for Insights events:   Event ID   Event name   Event source   All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to two per second per account. If this limit is exceeded, a throttling error occurs. 
    public func lookupEventsPaginator(_ input: LookupEventsRequest) -> EventLoopFuture<[Event]> {
        return client.paginate(input: input, command: lookupEvents, resultKey: "events", tokenKey: "nextToken")
    }
    
}

extension CloudTrail.ListPublicKeysRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            endTime: original.endTime, 
            nextToken: token, 
            startTime: original.startTime
        )
    }
}

extension CloudTrail.ListTagsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            nextToken: token, 
            resourceIdList: original.resourceIdList
        )
    }
}

extension CloudTrail.ListTrailsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension CloudTrail.LookupEventsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            endTime: original.endTime, 
            eventCategory: original.eventCategory, 
            lookupAttributes: original.lookupAttributes, 
            maxResults: original.maxResults, 
            nextToken: token, 
            startTime: original.startTime
        )
    }
}


