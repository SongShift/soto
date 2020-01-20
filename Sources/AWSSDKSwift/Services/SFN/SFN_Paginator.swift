// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension SFN {

    ///  Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
    public func getExecutionHistoryPaginator(_ input: GetExecutionHistoryInput) -> EventLoopFuture<[HistoryEvent]> {
        return client.paginate(input: input, command: getExecutionHistory, resultKey: "events", tokenKey: "nextToken")
    }
    
    ///  Lists the existing activities. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func listActivitiesPaginator(_ input: ListActivitiesInput) -> EventLoopFuture<[ActivityListItem]> {
        return client.paginate(input: input, command: listActivities, resultKey: "activities", tokenKey: "nextToken")
    }
    
    ///  Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func listExecutionsPaginator(_ input: ListExecutionsInput) -> EventLoopFuture<[ExecutionListItem]> {
        return client.paginate(input: input, command: listExecutions, resultKey: "executions", tokenKey: "nextToken")
    }
    
    ///  Lists the existing state machines. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func listStateMachinesPaginator(_ input: ListStateMachinesInput) -> EventLoopFuture<[StateMachineListItem]> {
        return client.paginate(input: input, command: listStateMachines, resultKey: "stateMachines", tokenKey: "nextToken")
    }
    
}

extension SFN.GetExecutionHistoryInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            executionArn: original.executionArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            reverseOrder: original.reverseOrder
        )
    }
}

extension SFN.ListActivitiesInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SFN.ListExecutionsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            stateMachineArn: original.stateMachineArn, 
            statusFilter: original.statusFilter
        )
    }
}

extension SFN.ListStateMachinesInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


