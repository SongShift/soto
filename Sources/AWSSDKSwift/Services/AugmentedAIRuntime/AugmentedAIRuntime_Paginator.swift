// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension AugmentedAIRuntime {

    ///  Returns information about human loops, given the specified parameters.
    public func listHumanLoopsPaginator(_ input: ListHumanLoopsRequest) -> EventLoopFuture<[HumanLoopSummary]> {
        return client.paginate(input: input, command: listHumanLoops, resultKey: "humanLoopSummaries", tokenKey: "nextToken")
    }
    
}

extension AugmentedAIRuntime.ListHumanLoopsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            creationTimeAfter: original.creationTimeAfter, 
            creationTimeBefore: original.creationTimeBefore, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sortOrder: original.sortOrder
        )
    }
}


