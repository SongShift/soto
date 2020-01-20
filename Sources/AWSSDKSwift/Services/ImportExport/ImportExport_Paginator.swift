// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension ImportExport {

    ///  This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
    public func listJobsPaginator(_ input: ListJobsInput) -> EventLoopFuture<[Job]> {
        return client.paginate(input: input, command: listJobs, resultKey: "jobs", tokenKey: "jobs[1].Jobid")
    }
    
}

extension ImportExport.ListJobsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            aPIVersion: original.aPIVersion, 
            marker: token, 
            maxJobs: original.maxJobs
        )
    }
}


