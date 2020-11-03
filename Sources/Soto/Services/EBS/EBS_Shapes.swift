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

import Foundation
import SotoCore

extension EBS {
    // MARK: Enums

    public enum ChecksumAggregationMethod: String, CustomStringConvertible, Codable {
        case linear = "LINEAR"
        public var description: String { return self.rawValue }
    }

    public enum ChecksumAlgorithm: String, CustomStringConvertible, Codable {
        case sha256 = "SHA256"
        public var description: String { return self.rawValue }
    }

    public enum Status: String, CustomStringConvertible, Codable {
        case completed
        case error
        case pending
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Block: AWSDecodableShape {
        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index.
        public let blockToken: String?

        public init(blockIndex: Int? = nil, blockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case blockToken = "BlockToken"
        }
    }

    public struct ChangedBlock: AWSDecodableShape {
        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index of the FirstSnapshotId specified in the ListChangedBlocks operation. This value is absent if the first snapshot does not have the changed block that is on the second snapshot.
        public let firstBlockToken: String?
        /// The block token for the block index of the SecondSnapshotId specified in the ListChangedBlocks operation.
        public let secondBlockToken: String?

        public init(blockIndex: Int? = nil, firstBlockToken: String? = nil, secondBlockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.firstBlockToken = firstBlockToken
            self.secondBlockToken = secondBlockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case firstBlockToken = "FirstBlockToken"
            case secondBlockToken = "SecondBlockToken"
        }
    }

    public struct CompleteSnapshotRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "changedBlocksCount", location: .header(locationName: "x-amz-ChangedBlocksCount")),
            AWSMemberEncoding(label: "checksum", location: .header(locationName: "x-amz-Checksum")),
            AWSMemberEncoding(label: "checksumAggregationMethod", location: .header(locationName: "x-amz-Checksum-Aggregation-Method")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header(locationName: "x-amz-Checksum-Algorithm")),
            AWSMemberEncoding(label: "snapshotId", location: .uri(locationName: "snapshotId"))
        ]

        /// The number of blocks that were written to the snapshot.
        public let changedBlocksCount: Int
        /// An aggregated Base-64 SHA256 checksum based on the checksums of each written block. To generate the aggregated checksum using the linear aggregation method, arrange the checksums for each written block in ascending order of their block index, concatenate them to form a single string, and then generate the checksum on the entire string using the SHA256 algorithm.
        public let checksum: String?
        /// The aggregation method used to generate the checksum. Currently, the only supported aggregation method is LINEAR.
        public let checksumAggregationMethod: ChecksumAggregationMethod?
        /// The algorithm used to generate the checksum. Currently, the only supported algorithm is SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm?
        /// The ID of the snapshot.
        public let snapshotId: String

        public init(changedBlocksCount: Int, checksum: String? = nil, checksumAggregationMethod: ChecksumAggregationMethod? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil, snapshotId: String) {
            self.changedBlocksCount = changedBlocksCount
            self.checksum = checksum
            self.checksumAggregationMethod = checksumAggregationMethod
            self.checksumAlgorithm = checksumAlgorithm
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try self.validate(self.changedBlocksCount, name: "changedBlocksCount", parent: name, min: 0)
            try self.validate(self.checksum, name: "checksum", parent: name, max: 64)
            try self.validate(self.checksum, name: "checksum", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct CompleteSnapshotResponse: AWSDecodableShape {
        /// The status of the snapshot.
        public let status: Status?

        public init(status: Status? = nil) {
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    public struct GetSnapshotBlockRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "blockIndex", location: .uri(locationName: "blockIndex")),
            AWSMemberEncoding(label: "blockToken", location: .querystring(locationName: "blockToken")),
            AWSMemberEncoding(label: "snapshotId", location: .uri(locationName: "snapshotId"))
        ]

        /// The block index of the block from which to get data. Obtain the BlockIndex by running the ListChangedBlocks or ListSnapshotBlocks operations.
        public let blockIndex: Int
        /// The block token of the block from which to get data. Obtain the BlockToken by running the ListChangedBlocks or ListSnapshotBlocks operations.
        public let blockToken: String
        /// The ID of the snapshot containing the block from which to get data.
        public let snapshotId: String

        public init(blockIndex: Int, blockToken: String, snapshotId: String) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try self.validate(self.blockIndex, name: "blockIndex", parent: name, min: 0)
            try self.validate(self.blockToken, name: "blockToken", parent: name, max: 256)
            try self.validate(self.blockToken, name: "blockToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetSnapshotBlockResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "blockData"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw, .allowStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "blockData", location: .body(locationName: "BlockData")),
            AWSMemberEncoding(label: "checksum", location: .header(locationName: "x-amz-Checksum")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header(locationName: "x-amz-Checksum-Algorithm")),
            AWSMemberEncoding(label: "dataLength", location: .header(locationName: "x-amz-Data-Length"))
        ]

        /// The data content of the block.
        public let blockData: AWSPayload?
        /// The checksum generated for the block, which is Base64 encoded.
        public let checksum: String?
        /// The algorithm used to generate the checksum for the block, such as SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm?
        /// The size of the data in the block.
        public let dataLength: Int?

        public init(blockData: AWSPayload? = nil, checksum: String? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil, dataLength: Int? = nil) {
            self.blockData = blockData
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.dataLength = dataLength
        }

        private enum CodingKeys: String, CodingKey {
            case blockData = "BlockData"
            case checksum = "x-amz-Checksum"
            case checksumAlgorithm = "x-amz-Checksum-Algorithm"
            case dataLength = "x-amz-Data-Length"
        }
    }

    public struct ListChangedBlocksRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "firstSnapshotId", location: .querystring(locationName: "firstSnapshotId")),
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "pageToken")),
            AWSMemberEncoding(label: "secondSnapshotId", location: .uri(locationName: "secondSnapshotId")),
            AWSMemberEncoding(label: "startingBlockIndex", location: .querystring(locationName: "startingBlockIndex"))
        ]

        /// The ID of the first snapshot to use for the comparison.  The FirstSnapshotID parameter must be specified with a SecondSnapshotId parameter; otherwise, an error occurs.
        public let firstSnapshotId: String?
        /// The number of results to return.
        public let maxResults: Int?
        /// The token to request the next page of results.
        public let nextToken: String?
        /// The ID of the second snapshot to use for the comparison.  The SecondSnapshotId parameter must be specified with a FirstSnapshotID parameter; otherwise, an error occurs.
        public let secondSnapshotId: String
        /// The block index from which the comparison should start. The list in the response will start from this block index or the next valid block index in the snapshots.
        public let startingBlockIndex: Int?

        public init(firstSnapshotId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, secondSnapshotId: String, startingBlockIndex: Int? = nil) {
            self.firstSnapshotId = firstSnapshotId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.secondSnapshotId = secondSnapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try self.validate(self.firstSnapshotId, name: "firstSnapshotId", parent: name, max: 64)
            try self.validate(self.firstSnapshotId, name: "firstSnapshotId", parent: name, min: 1)
            try self.validate(self.firstSnapshotId, name: "firstSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 10000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 100)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 256)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.secondSnapshotId, name: "secondSnapshotId", parent: name, max: 64)
            try self.validate(self.secondSnapshotId, name: "secondSnapshotId", parent: name, min: 1)
            try self.validate(self.secondSnapshotId, name: "secondSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.validate(self.startingBlockIndex, name: "startingBlockIndex", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListChangedBlocksResponse: AWSDecodableShape {
        /// The size of the block.
        public let blockSize: Int?
        /// An array of objects containing information about the changed blocks.
        public let changedBlocks: [ChangedBlock]?
        /// The time when the BlockToken expires.
        public let expiryTime: Date?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blockSize: Int? = nil, changedBlocks: [ChangedBlock]? = nil, expiryTime: Date? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blockSize = blockSize
            self.changedBlocks = changedBlocks
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blockSize = "BlockSize"
            case changedBlocks = "ChangedBlocks"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }

    public struct ListSnapshotBlocksRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "pageToken")),
            AWSMemberEncoding(label: "snapshotId", location: .uri(locationName: "snapshotId")),
            AWSMemberEncoding(label: "startingBlockIndex", location: .querystring(locationName: "startingBlockIndex"))
        ]

        /// The number of results to return.
        public let maxResults: Int?
        /// The token to request the next page of results.
        public let nextToken: String?
        /// The ID of the snapshot from which to get block indexes and block tokens.
        public let snapshotId: String
        /// The block index from which the list should start. The list in the response will start from this block index or the next valid block index in the snapshot.
        public let startingBlockIndex: Int?

        public init(maxResults: Int? = nil, nextToken: String? = nil, snapshotId: String, startingBlockIndex: Int? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.snapshotId = snapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 10000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 100)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 256)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.validate(self.startingBlockIndex, name: "startingBlockIndex", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSnapshotBlocksResponse: AWSDecodableShape {
        /// An array of objects containing information about the blocks.
        public let blocks: [Block]?
        /// The size of the block.
        public let blockSize: Int?
        /// The time when the BlockToken expires.
        public let expiryTime: Date?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blocks: [Block]? = nil, blockSize: Int? = nil, expiryTime: Date? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blocks = blocks
            self.blockSize = blockSize
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blocks = "Blocks"
            case blockSize = "BlockSize"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }

    public struct PutSnapshotBlockRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "blockData"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw, .allowStreaming, .allowChunkedStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "blockData", location: .body(locationName: "BlockData")),
            AWSMemberEncoding(label: "blockIndex", location: .uri(locationName: "blockIndex")),
            AWSMemberEncoding(label: "checksum", location: .header(locationName: "x-amz-Checksum")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header(locationName: "x-amz-Checksum-Algorithm")),
            AWSMemberEncoding(label: "dataLength", location: .header(locationName: "x-amz-Data-Length")),
            AWSMemberEncoding(label: "progress", location: .header(locationName: "x-amz-Progress")),
            AWSMemberEncoding(label: "snapshotId", location: .uri(locationName: "snapshotId"))
        ]

        /// The data to write to the block. The block data is not signed as part of the Signature Version 4 signing process. As a result, you must generate and provide a Base64-encoded SHA256 checksum for the block data using the x-amz-Checksum header. Also, you must specify the checksum algorithm using the x-amz-Checksum-Algorithm header. The checksum that you provide is part of the Signature Version 4 signing process. It is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity of the data. If the checksums do not correspond, the request fails. For more information, see  Using checksums with the EBS direct APIs in the Amazon Elastic Compute Cloud User Guide.
        public let blockData: AWSPayload
        /// The block index of the block in which to write the data. A block index is a logical index in units of 512 KiB blocks. To identify the block index, divide the logical offset of the data in the logical volume by the block size (logical offset of data/524288). The logical offset of the data must be 512 KiB aligned.
        public let blockIndex: Int
        /// A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are supported.
        public let checksum: String
        /// The algorithm used to generate the checksum. Currently, the only supported algorithm is SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm
        /// The size of the data to write to the block, in bytes. Currently, the only supported size is 524288. Valid values: 524288
        public let dataLength: Int
        /// The progress of the write process, as a percentage.
        public let progress: Int?
        /// The ID of the snapshot.
        public let snapshotId: String

        public init(blockData: AWSPayload, blockIndex: Int, checksum: String, checksumAlgorithm: ChecksumAlgorithm, dataLength: Int, progress: Int? = nil, snapshotId: String) {
            self.blockData = blockData
            self.blockIndex = blockIndex
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.dataLength = dataLength
            self.progress = progress
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try self.validate(self.blockIndex, name: "blockIndex", parent: name, min: 0)
            try self.validate(self.checksum, name: "checksum", parent: name, max: 64)
            try self.validate(self.checksum, name: "checksum", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.progress, name: "progress", parent: name, max: 100)
            try self.validate(self.progress, name: "progress", parent: name, min: 0)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct PutSnapshotBlockResponse: AWSDecodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "checksum", location: .header(locationName: "x-amz-Checksum")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header(locationName: "x-amz-Checksum-Algorithm"))
        ]

        /// The SHA256 checksum generated for the block data by Amazon EBS.
        public let checksum: String?
        /// The algorithm used by Amazon EBS to generate the checksum.
        public let checksumAlgorithm: ChecksumAlgorithm?

        public init(checksum: String? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil) {
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
        }

        private enum CodingKeys: String, CodingKey {
            case checksum = "x-amz-Checksum"
            case checksumAlgorithm = "x-amz-Checksum-Algorithm"
        }
    }

    public struct StartSnapshotRequest: AWSEncodableShape {
        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully. The subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you do not specify a client token, one is automatically generated by the AWS SDK. For more information, see  Idempotency for StartSnapshot API in the Amazon Elastic Compute Cloud User Guide.
        public let clientToken: String?
        /// A description for the snapshot.
        public let description: String?
        /// Indicates whether to encrypt the snapshot. To create an encrypted snapshot, specify true. To create an unencrypted snapshot, omit this parameter. If you specify a value for ParentSnapshotId, omit this parameter. If you specify true, the snapshot is encrypted using the CMK specified using the KmsKeyArn parameter. If no value is specified for KmsKeyArn, the default CMK for your account is used. If no default CMK has been specified for your account, the AWS managed CMK is used. To set a default CMK for your account, use  ModifyEbsDefaultKmsKeyId. If your account is enabled for encryption by default, you cannot set this parameter to false. In this case, you can omit this parameter. For more information, see  Using encryption in the Amazon Elastic Compute Cloud User Guide.
        public let encrypted: Bool?
        /// The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) to be used to encrypt the snapshot. If you do not specify a CMK, the default AWS managed CMK is used. If you specify a ParentSnapshotId, omit this parameter; the snapshot will be encrypted using the same CMK that was used to encrypt the parent snapshot. If Encrypted is set to true, you must specify a CMK ARN.
        public let kmsKeyArn: String?
        /// The ID of the parent snapshot. If there is no parent snapshot, or if you are creating the first snapshot for an on-premises volume, omit this parameter. If your account is enabled for encryption by default, you cannot use an unencrypted snapshot as a parent snapshot. You must first create an encrypted copy of the parent snapshot using CopySnapshot.
        public let parentSnapshotId: String?
        /// The tags to apply to the snapshot.
        public let tags: [Tag]?
        /// The amount of time (in minutes) after which the snapshot is automatically cancelled if:   No blocks are written to the snapshot.   The snapshot is not completed after writing the last block of data.   If no value is specified, the timeout defaults to 60 minutes.
        public let timeout: Int?
        /// The size of the volume, in GiB. The maximum size is 16384 GiB (16 TiB).
        public let volumeSize: Int64

        public init(clientToken: String? = StartSnapshotRequest.idempotencyToken(), description: String? = nil, encrypted: Bool? = nil, kmsKeyArn: String? = nil, parentSnapshotId: String? = nil, tags: [Tag]? = nil, timeout: Int? = nil, volumeSize: Int64) {
            self.clientToken = clientToken
            self.description = description
            self.encrypted = encrypted
            self.kmsKeyArn = kmsKeyArn
            self.parentSnapshotId = parentSnapshotId
            self.tags = tags
            self.timeout = timeout
            self.volumeSize = volumeSize
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 255)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[\\S]+$")
            try self.validate(self.description, name: "description", parent: name, max: 255)
            try self.validate(self.description, name: "description", parent: name, pattern: "^[\\S\\s]+$")
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, max: 2048)
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, min: 1)
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, pattern: "arn:aws[a-z\\-]*:kms:.*:[0-9]{12}:key/.*")
            try self.validate(self.parentSnapshotId, name: "parentSnapshotId", parent: name, max: 64)
            try self.validate(self.parentSnapshotId, name: "parentSnapshotId", parent: name, min: 1)
            try self.validate(self.parentSnapshotId, name: "parentSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.timeout, name: "timeout", parent: name, max: 60)
            try self.validate(self.timeout, name: "timeout", parent: name, min: 10)
            try self.validate(self.volumeSize, name: "volumeSize", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case description = "Description"
            case encrypted = "Encrypted"
            case kmsKeyArn = "KmsKeyArn"
            case parentSnapshotId = "ParentSnapshotId"
            case tags = "Tags"
            case timeout = "Timeout"
            case volumeSize = "VolumeSize"
        }
    }

    public struct StartSnapshotResponse: AWSDecodableShape {
        /// The size of the blocks in the snapshot, in bytes.
        public let blockSize: Int?
        /// The description of the snapshot.
        public let description: String?
        /// The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) used to encrypt the snapshot.
        public let kmsKeyArn: String?
        /// The AWS account ID of the snapshot owner.
        public let ownerId: String?
        /// The ID of the parent snapshot.
        public let parentSnapshotId: String?
        /// The ID of the snapshot.
        public let snapshotId: String?
        /// The timestamp when the snapshot was created.
        public let startTime: Date?
        /// The status of the snapshot.
        public let status: Status?
        /// The tags applied to the snapshot. You can specify up to 50 tags per snapshot. For more information, see  Tagging your Amazon EC2 resources in the Amazon Elastic Compute Cloud User Guide.
        public let tags: [Tag]?
        /// The size of the volume, in GiB.
        public let volumeSize: Int64?

        public init(blockSize: Int? = nil, description: String? = nil, kmsKeyArn: String? = nil, ownerId: String? = nil, parentSnapshotId: String? = nil, snapshotId: String? = nil, startTime: Date? = nil, status: Status? = nil, tags: [Tag]? = nil, volumeSize: Int64? = nil) {
            self.blockSize = blockSize
            self.description = description
            self.kmsKeyArn = kmsKeyArn
            self.ownerId = ownerId
            self.parentSnapshotId = parentSnapshotId
            self.snapshotId = snapshotId
            self.startTime = startTime
            self.status = status
            self.tags = tags
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blockSize = "BlockSize"
            case description = "Description"
            case kmsKeyArn = "KmsKeyArn"
            case ownerId = "OwnerId"
            case parentSnapshotId = "ParentSnapshotId"
            case snapshotId = "SnapshotId"
            case startTime = "StartTime"
            case status = "Status"
            case tags = "Tags"
            case volumeSize = "VolumeSize"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// The key of the tag.
        public let key: String?
        /// The value of the tag.
        public let value: String?

        public init(key: String? = nil, value: String? = nil) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 127)
            try self.validate(self.key, name: "key", parent: name, pattern: "^[\\S\\s]+$")
            try self.validate(self.value, name: "value", parent: name, max: 255)
            try self.validate(self.value, name: "value", parent: name, pattern: "^[\\S\\s]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
}
