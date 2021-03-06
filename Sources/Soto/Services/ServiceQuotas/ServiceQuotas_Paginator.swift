//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension ServiceQuotas {
    ///  Lists all default service quotas for the specified AWS service or all AWS services. ListAWSDefaultServiceQuotas is similar to ListServiceQuotas except for the Value object. The Value object returned by ListAWSDefaultServiceQuotas is the default value assigned by AWS. This request returns a list of all service quotas for the specified service. The listing of each you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAWSDefaultServiceQuotasPaginator<Result>(
        _ input: ListAWSDefaultServiceQuotasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAWSDefaultServiceQuotasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAWSDefaultServiceQuotas,
            tokenKey: \ListAWSDefaultServiceQuotasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAWSDefaultServiceQuotasPaginator(
        _ input: ListAWSDefaultServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAWSDefaultServiceQuotasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAWSDefaultServiceQuotas,
            tokenKey: \ListAWSDefaultServiceQuotasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Requests a list of the changes to quotas for a service.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRequestedServiceQuotaChangeHistoryPaginator<Result>(
        _ input: ListRequestedServiceQuotaChangeHistoryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRequestedServiceQuotaChangeHistoryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRequestedServiceQuotaChangeHistory,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRequestedServiceQuotaChangeHistoryPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRequestedServiceQuotaChangeHistoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRequestedServiceQuotaChangeHistory,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Requests a list of the changes to specific service quotas. This command provides additional granularity over the ListRequestedServiceQuotaChangeHistory command. Once a quota change request has reached CASE_CLOSED, APPROVED, or DENIED, the history has been kept for 90 days.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRequestedServiceQuotaChangeHistoryByQuotaPaginator<Result>(
        _ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRequestedServiceQuotaChangeHistoryByQuotaResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRequestedServiceQuotaChangeHistoryByQuota,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryByQuotaResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRequestedServiceQuotaChangeHistoryByQuotaPaginator(
        _ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRequestedServiceQuotaChangeHistoryByQuotaResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRequestedServiceQuotaChangeHistoryByQuota,
            tokenKey: \ListRequestedServiceQuotaChangeHistoryByQuotaResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the quota increase requests in the template.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listServiceQuotaIncreaseRequestsInTemplatePaginator<Result>(
        _ input: ListServiceQuotaIncreaseRequestsInTemplateRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServiceQuotaIncreaseRequestsInTemplateResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServiceQuotaIncreaseRequestsInTemplate,
            tokenKey: \ListServiceQuotaIncreaseRequestsInTemplateResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listServiceQuotaIncreaseRequestsInTemplatePaginator(
        _ input: ListServiceQuotaIncreaseRequestsInTemplateRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServiceQuotaIncreaseRequestsInTemplateResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServiceQuotaIncreaseRequestsInTemplate,
            tokenKey: \ListServiceQuotaIncreaseRequestsInTemplateResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all service quotas for the specified AWS service. This request returns a list of the service quotas for the specified service. you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listServiceQuotasPaginator<Result>(
        _ input: ListServiceQuotasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServiceQuotasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServiceQuotas,
            tokenKey: \ListServiceQuotasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listServiceQuotasPaginator(
        _ input: ListServiceQuotasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServiceQuotasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServiceQuotas,
            tokenKey: \ListServiceQuotasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the AWS services available in Service Quotas. Not all AWS services are available in Service Quotas. To list the see the list of the service quotas for a specific service, use ListServiceQuotas.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listServicesPaginator<Result>(
        _ input: ListServicesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServices,
            tokenKey: \ListServicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServices,
            tokenKey: \ListServicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ServiceQuotas.ListAWSDefaultServiceQuotasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListAWSDefaultServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListRequestedServiceQuotaChangeHistoryRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode,
            status: self.status
        )
    }
}

extension ServiceQuotas.ListRequestedServiceQuotaChangeHistoryByQuotaRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListRequestedServiceQuotaChangeHistoryByQuotaRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            quotaCode: self.quotaCode,
            serviceCode: self.serviceCode,
            status: self.status
        )
    }
}

extension ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotaIncreaseRequestsInTemplateRequest {
        return .init(
            awsRegion: self.awsRegion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListServiceQuotasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServiceQuotasRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension ServiceQuotas.ListServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceQuotas.ListServicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
