// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension IoT1ClickProjects {

    ///  Lists the placement(s) of a project.
    public func listPlacementsPaginator(_ input: ListPlacementsRequest) -> EventLoopFuture<[PlacementSummary]> {
        return client.paginate(input: input, command: listPlacements, resultKey: "placements", tokenKey: "nextToken")
    }
    
    ///  Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    public func listProjectsPaginator(_ input: ListProjectsRequest) -> EventLoopFuture<[ProjectSummary]> {
        return client.paginate(input: input, command: listProjects, resultKey: "projects", tokenKey: "nextToken")
    }
    
}

extension IoT1ClickProjects.ListPlacementsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            projectName: original.projectName
        )
    }
}

extension IoT1ClickProjects.ListProjectsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


