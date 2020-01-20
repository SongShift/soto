// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension MigrationHub {

    ///  Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
    public func listApplicationStatesPaginator(_ input: ListApplicationStatesRequest) -> EventLoopFuture<[ApplicationState]> {
        return client.paginate(input: input, command: listApplicationStates, resultKey: "applicationStateList", tokenKey: "nextToken")
    }
    
    ///  Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.   
    public func listCreatedArtifactsPaginator(_ input: ListCreatedArtifactsRequest) -> EventLoopFuture<[CreatedArtifact]> {
        return client.paginate(input: input, command: listCreatedArtifacts, resultKey: "createdArtifactList", tokenKey: "nextToken")
    }
    
    ///  Lists discovered resources associated with the given MigrationTask.
    public func listDiscoveredResourcesPaginator(_ input: ListDiscoveredResourcesRequest) -> EventLoopFuture<[DiscoveredResource]> {
        return client.paginate(input: input, command: listDiscoveredResources, resultKey: "discoveredResourceList", tokenKey: "nextToken")
    }
    
    ///  Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.  
    public func listMigrationTasksPaginator(_ input: ListMigrationTasksRequest) -> EventLoopFuture<[MigrationTaskSummary]> {
        return client.paginate(input: input, command: listMigrationTasks, resultKey: "migrationTaskSummaryList", tokenKey: "nextToken")
    }
    
    ///  Lists progress update streams associated with the user account making this call.
    public func listProgressUpdateStreamsPaginator(_ input: ListProgressUpdateStreamsRequest) -> EventLoopFuture<[ProgressUpdateStreamSummary]> {
        return client.paginate(input: input, command: listProgressUpdateStreams, resultKey: "progressUpdateStreamSummaryList", tokenKey: "nextToken")
    }
    
}

extension MigrationHub.ListApplicationStatesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            applicationIds: original.applicationIds, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension MigrationHub.ListCreatedArtifactsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            migrationTaskName: original.migrationTaskName, 
            nextToken: token, 
            progressUpdateStream: original.progressUpdateStream
        )
    }
}

extension MigrationHub.ListDiscoveredResourcesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            migrationTaskName: original.migrationTaskName, 
            nextToken: token, 
            progressUpdateStream: original.progressUpdateStream
        )
    }
}

extension MigrationHub.ListMigrationTasksRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceName: original.resourceName
        )
    }
}

extension MigrationHub.ListProgressUpdateStreamsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


