// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension AppMesh {

    ///  Returns a list of existing service meshes.
    public func listMeshesPaginator(_ input: ListMeshesInput, onPage: @escaping (ListMeshesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMeshes, tokenKey: \ListMeshesOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of existing routes in a service mesh.
    public func listRoutesPaginator(_ input: ListRoutesInput, onPage: @escaping (ListRoutesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRoutes, tokenKey: \ListRoutesOutput.nextToken, onPage: onPage)
    }

    ///  List the tags for an App Mesh resource.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceInput, onPage: @escaping (ListTagsForResourceOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of existing virtual nodes.
    public func listVirtualNodesPaginator(_ input: ListVirtualNodesInput, onPage: @escaping (ListVirtualNodesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVirtualNodes, tokenKey: \ListVirtualNodesOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of existing virtual routers in a service mesh.
    public func listVirtualRoutersPaginator(_ input: ListVirtualRoutersInput, onPage: @escaping (ListVirtualRoutersOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVirtualRouters, tokenKey: \ListVirtualRoutersOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of existing virtual services in a service mesh.
    public func listVirtualServicesPaginator(_ input: ListVirtualServicesInput, onPage: @escaping (ListVirtualServicesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVirtualServices, tokenKey: \ListVirtualServicesOutput.nextToken, onPage: onPage)
    }

}

extension AppMesh.ListMeshesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListMeshesInput {
        return .init(
            limit: self.limit, 
            nextToken: token
        )

    }
}

extension AppMesh.ListRoutesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListRoutesInput {
        return .init(
            limit: self.limit, 
            meshName: self.meshName, 
            nextToken: token, 
            virtualRouterName: self.virtualRouterName
        )

    }
}

extension AppMesh.ListTagsForResourceInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListTagsForResourceInput {
        return .init(
            limit: self.limit, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}

extension AppMesh.ListVirtualNodesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListVirtualNodesInput {
        return .init(
            limit: self.limit, 
            meshName: self.meshName, 
            nextToken: token
        )

    }
}

extension AppMesh.ListVirtualRoutersInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListVirtualRoutersInput {
        return .init(
            limit: self.limit, 
            meshName: self.meshName, 
            nextToken: token
        )

    }
}

extension AppMesh.ListVirtualServicesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListVirtualServicesInput {
        return .init(
            limit: self.limit, 
            meshName: self.meshName, 
            nextToken: token
        )

    }
}

