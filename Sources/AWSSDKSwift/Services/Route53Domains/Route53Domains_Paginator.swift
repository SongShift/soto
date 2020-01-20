// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension Route53Domains {

    ///  This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.
    public func listDomainsPaginator(_ input: ListDomainsRequest) -> EventLoopFuture<[DomainSummary]> {
        return client.paginate(input: input, command: listDomains, resultKey: "domains", tokenKey: "nextPageMarker")
    }
    
    ///  This operation returns the operation IDs of operations that are not yet complete.
    public func listOperationsPaginator(_ input: ListOperationsRequest) -> EventLoopFuture<[OperationSummary]> {
        return client.paginate(input: input, command: listOperations, resultKey: "operations", tokenKey: "nextPageMarker")
    }
    
}

extension Route53Domains.ListDomainsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            marker: token, 
            maxItems: original.maxItems
        )
    }
}

extension Route53Domains.ListOperationsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            marker: token, 
            maxItems: original.maxItems, 
            submittedSince: original.submittedSince
        )
    }
}


