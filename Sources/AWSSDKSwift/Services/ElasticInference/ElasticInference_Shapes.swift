// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ElasticInference {

    public struct ListTagsForResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", location: .uri(locationName: "resourceArn"), required: true, type: .string)
        ]

        /// The ARN of the Elastic Inference Accelerator to list the tags for.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
        }
    }

    public struct ListTagsForResourceResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "tags", required: false, type: .map)
        ]

        /// The tags of the Elastic Inference Accelerator.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", location: .uri(locationName: "resourceArn"), required: true, type: .string), 
            AWSShapeMember(label: "tags", required: true, type: .map)
        ]

        /// The ARN of the Elastic Inference Accelerator to tag.
        public let resourceArn: String
        /// The tags to add to the Elastic Inference Accelerator.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 1)
            try self.tags.forEach {
                try validate($0.key, name:"tags.key", parent: name, max: 128)
                try validate($0.key, name:"tags.key", parent: name, min: 1)
                try validate($0.value, name:"tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case tags = "tags"
        }
    }

    public struct TagResourceResult: AWSShape {


        public init() {
        }

    }

    public struct UntagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", location: .uri(locationName: "resourceArn"), required: true, type: .string), 
            AWSShapeMember(label: "tagKeys", location: .querystring(locationName: "tagKeys"), required: true, type: .list)
        ]

        /// The ARN of the Elastic Inference Accelerator to untag.
        public let resourceArn: String
        /// The list of tags to remove from the Elastic Inference Accelerator.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
            }
            try validate(self.tagKeys, name:"tagKeys", parent: name, max: 50)
            try validate(self.tagKeys, name:"tagKeys", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case tagKeys = "tagKeys"
        }
    }

    public struct UntagResourceResult: AWSShape {


        public init() {
        }

    }
}
