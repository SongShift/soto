// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension MediaPackageVod {

    ///  Returns a collection of MediaPackage VOD Asset resources.
    public func listAssetsPaginator(_ input: ListAssetsRequest) -> EventLoopFuture<[AssetShallow]> {
        return client.paginate(input: input, command: listAssets, resultKey: "assets", tokenKey: "nextToken")
    }
    
    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurationsPaginator(_ input: ListPackagingConfigurationsRequest) -> EventLoopFuture<[PackagingConfiguration]> {
        return client.paginate(input: input, command: listPackagingConfigurations, resultKey: "packagingConfigurations", tokenKey: "nextToken")
    }
    
    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroupsPaginator(_ input: ListPackagingGroupsRequest) -> EventLoopFuture<[PackagingGroup]> {
        return client.paginate(input: input, command: listPackagingGroups, resultKey: "packagingGroups", tokenKey: "nextToken")
    }
    
}

extension MediaPackageVod.ListAssetsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            packagingGroupId: original.packagingGroupId
        )
    }
}

extension MediaPackageVod.ListPackagingConfigurationsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            packagingGroupId: original.packagingGroupId
        )
    }
}

extension MediaPackageVod.ListPackagingGroupsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


